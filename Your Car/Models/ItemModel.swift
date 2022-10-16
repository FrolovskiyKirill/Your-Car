//
//  ItemModel.swift
//  Your Car
//
//  Created by Kirill Frolovskiy on 16.10.2022.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isComplited: Bool
}
