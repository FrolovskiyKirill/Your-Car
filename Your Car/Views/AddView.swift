//
//  AddView.swift
//  Your Car
//
//  Created by Kirill Frolovskiy on 16.10.2022.
//

import SwiftUI

struct AddView: View {
    
    @State var textFielText: String = ""
    
    var body: some View {
        
        ScrollView {
            VStack {
                TextField("Type here", text: $textFielText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(.systemGray5))
                    .cornerRadius(10)
                
                Button {
                    
                } label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                }

            }
            .padding(14)
        }
        .navigationTitle("Добавиьть")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
    }
}
