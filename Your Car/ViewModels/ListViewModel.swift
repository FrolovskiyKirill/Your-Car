//
//  ListViewModel.swift
//  Your Car
//
//  Created by Kirill Frolovskiy on 16.10.2022.
//

import Foundation

class ListViewModel: ObservableObject {

    @Published var items: [ItemModel] = [].reversed() {
        didSet {
            saveItems()
        }
    }
    
    let itemKey = "items_list"
    
    init() {
        getItems()
    }
    
    func getItems() {

        guard
            let data = UserDefaults.standard.data(forKey: itemKey),
            let savedData = try? JSONDecoder().decode([ItemModel].self, from: data)
        else { return }
        self.items = savedData
        if let JSONString = String(data: data, encoding: String.Encoding.utf8) {
           print(JSONString)
        }
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String, icon: String) {
        let newItem = ItemModel(title: title, icon: icon, isComplited: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel) {
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index] = item.updateCompletion()
        }
    }
    
    func saveItems() {
        if let encodeData = try? JSONEncoder().encode(items) {
            UserDefaults.standard.setValue(encodeData, forKeyPath: itemKey)
        }
    }
}
