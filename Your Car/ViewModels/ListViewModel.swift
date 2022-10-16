//
//  ListViewModel.swift
//  Your Car
//
//  Created by Kirill Frolovskiy on 16.10.2022.
//

import Foundation

class ListViewModel: ObservableObject {

    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems = [
            ItemModel(title: "Бензин", isComplited: false),
            ItemModel(title: "Штраф", isComplited: false),
            ItemModel(title: "Ремонт", isComplited: true),
            ItemModel(title: "Страховка", isComplited: false)
        ]
        items.append(contentsOf: newItems)
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
}
