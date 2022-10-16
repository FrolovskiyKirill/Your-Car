//
//  AddView.swift
//  Your Car
//
//  Created by Kirill Frolovskiy on 16.10.2022.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
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
                    saveButtonPressed()
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
    
    func saveButtonPressed() {
        if textIsAppropriate() {
            listViewModel.addItem(title: textFielText)
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    func textIsAppropriate() -> Bool {
        if textFielText.count < 3 {
            return false
        }
        return true
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
        .environmentObject(ListViewModel())
    }
}
