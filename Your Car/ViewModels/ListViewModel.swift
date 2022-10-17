//
//  ListViewModel.swift
//  Your Car
//
//  Created by Kirill Frolovskiy on 16.10.2022.
//

import Foundation

class ListViewModel: ObservableObject {

    @Published var items: [ItemModel] = [] {
        didSet {
            saveItems()
        }
    }
    
    let itemKey = "items_list"
    
    init() {
        getItems()
    }
    
    func getItems() {
//        let newItems = [
//            ItemModel(title: "Бензин", isComplited: false),
//            ItemModel(title: "Штраф", isComplited: false),
//            ItemModel(title: "Ремонт", isComplited: true),
//            ItemModel(title: "Страховка", isComplited: false)
//        ]
//        items.append(contentsOf: newItems)
        guard
            let data = UserDefaults.standard.data(forKey: itemKey),
            let savedData = try? JSONDecoder().decode([ItemModel].self, from: data)
        else { return }
        self.items = savedData
        print(savedData)
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isComplited: false)
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
