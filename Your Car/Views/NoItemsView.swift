//
//  NoItemsView.swift
//  Your Car
//
//  Created by Kirill Frolovskiy on 18.10.2022.
//

import SwiftUI

struct NoItemsView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Hi")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Are you a productive person? I think you should click the add button and add a bunch of items to your todo list!")
                NavigationLink(
                    destination: AddView()) {
                        Text("Add smth!")
                    }
                
            }
            .multilineTextAlignment(.center)
            .padding(40)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct NoItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NoItemsView()
                .navigationTitle("Title")
        }
    }
}
