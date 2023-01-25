//
//  ItemModel.swift
//  Your Car
//
//  Created by Kirill Frolovskiy on 16.10.2022.
//

import Foundation

struct ItemModel: Identifiable, Codable {
    let id: String
    let icon: String
    let title: String
    let isComplited: Bool
    
    init(id: String = UUID().uuidString, title: String, icon: String, isComplited: Bool) {
        self.id = id
        self.title = title
        self.icon = icon
        self.isComplited = isComplited
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, icon: icon, isComplited: !isComplited)
    }
    
}
