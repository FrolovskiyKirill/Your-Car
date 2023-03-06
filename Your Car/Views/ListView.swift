//
//  ListView.swift
//  Your Car
//
//  Created by Kirill Frolovskiy on 15.10.2022.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        VStack {
            ZStack {
                if listViewModel.items.isEmpty {
                    NoItemsView()
                        .transition(AnyTransition.opacity.animation(.easeIn))
                } else {
                    List {
                        ForEach(listViewModel.items) { item in
                            ListRowView(item: item)
                                .onTapGesture {
                                    withAnimation(.linear) {
                                        listViewModel.updateItem(item: item)
                                    }
                                }
                        }
                        .onDelete(perform: listViewModel.deleteItem)
                        .onMove(perform: listViewModel.moveItem)
                    }
                }
                
            }
            ButtonsView()
            //Hello
            
            .listStyle(PlainListStyle())
            .navigationBarItems(
                trailing: EditButton()
        )
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
        .environmentObject(ListViewModel())
    }
}

