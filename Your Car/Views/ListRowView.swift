//
//  ListRowView.swift
//  Your Car
//
//  Created by Kirill Frolovskiy on 15.10.2022.
//

import SwiftUI



struct ListRowView: View {
    
    let item: ItemModel
    
    
    var body: some View {
        HStack {
            Image(systemName: item.icon)
            VStack {
                Text(item.title)
                Text(Date(), format: .dateTime.year().month().day())
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            Spacer()
            Text(item.title)
            Image(systemName: item.isComplited ? "rublesign.circle" : "shield.fill")
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    
    static var item1 = ItemModel(title: "First", icon: "car", isComplited: true)
    static var item2 = ItemModel(title: "Second", icon: "car", isComplited: false)
    
    static var previews: some View {
        Group {
            ListRowView(item: item1)
            ListRowView(item: item2)
        }
        .previewLayout(.sizeThatFits)
    }
}

//HStack {
//    Image(systemName: "person.wave.2")
//    Text("Штраф")
//    Spacer()
//    Text("250")
//    Image(systemName: "rublesign.circle")
//}
//HStack {
//    Image(systemName: "wrench.and.screwdriver.fill")
//    Text("Ремонт")
//    Spacer()
//    Text("5000")
//    Image(systemName: "rublesign.circle")
//}
//HStack {
//    Image(systemName: "dollarsign.arrow.circlepath")
//    Text("Страховка")
//    Spacer()
//    Text("8900")
//    Image(systemName: "rublesign.circle")
//}
