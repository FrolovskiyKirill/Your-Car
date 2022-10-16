//
//  ListView.swift
//  Your Car
//
//  Created by Kirill Frolovskiy on 15.10.2022.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
        ItemModel(title: "Бензин", isComplited: false),
        ItemModel(title: "Штраф", isComplited: false),
        ItemModel(title: "Ремонт", isComplited: true),
        ItemModel(title: "Страховка", isComplited: false)
    ]
    
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Расходы")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink("Add", destination: AddView())
        )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}

