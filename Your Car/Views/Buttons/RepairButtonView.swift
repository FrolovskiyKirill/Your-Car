//
//  RepairButtonView.swift
//  Your Car
//
//  Created by Kirill Frolovskiy on 27.01.2023.
//

import SwiftUI

struct RepairButtonView: View {
    
    let iconName: String
    @State var showAlert: Bool = false
    @State var textFielText = ""
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        ZStack {
            Image(systemName: iconName)
                .font(.title2)
                .foregroundColor(Color.black)
                .frame(width: 70, height: 70)
                .background(Circle().foregroundColor(Color.white))
                .shadow(color: Color.black.opacity(0.25), radius: 10, x: 0, y: 0)
            //            .padding()
                .onTapGesture {
                    print("HI")
                    showAlert.toggle()
                    
                }
        }
        .alert("Ремонт", isPresented: $showAlert) {
            TextField("Сумма", text: $textFielText)
                .keyboardType(.numberPad)
            Button("OK", action: okButtonPressed)
            Button("Cancel", role: .cancel) { }
        }
    }
    
    private func okButtonPressed() {
        listViewModel.addItem(title: textFielText, icon: "engine.combustion")
        //        presentationMode.wrappedValue.dismiss()
    }
}

struct RepairButtonView_Previews: PreviewProvider {
    static var previews: some View {
            FuelButtonView(iconName: "engine.combustion")
                .previewLayout(.sizeThatFits)
    }
}
