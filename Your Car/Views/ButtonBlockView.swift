//
//  ButtonBlockView.swift
//  Your Car
//
//  Created by Kirill Frolovskiy on 24.01.2023.
//

import SwiftUI

struct ButtonBlockView: View {
    @State var showAlert = false

    @EnvironmentObject var listViewModel: ListViewModel
//    @Environment(\.presentationMode) var presentationMode
    
    @State var textFielText = ""
    
    var body: some View {
        VStack {
            HStack {
                Button("fuel") {
                    showAlert.toggle()
                }
                .foregroundColor(.white)
                .font(.headline)
                .frame(height: 70)
                .frame(maxWidth: .infinity)
                .background(Color.accentColor)
                .cornerRadius(10)
                .alert("Бензин", isPresented: $showAlert) {
                    TextField("Сумма", text: $textFielText)
                    Button("OK", action: okFuelButtonPressed)
                    Button("Cancel", role: .cancel) { }
                }
                Button("tax") {
                    showAlert.toggle()
                }
                .foregroundColor(.white)
                .font(.headline)
                .frame(height: 70)
                .frame(maxWidth: .infinity)
                .background(Color.accentColor)
                .cornerRadius(10)
                .alert("Бензин", isPresented: $showAlert) {
                    TextField("Сумма", text: $textFielText)
                    Button("OK", action: okTaxButtonPressed)
                    Button("Cancel", role: .cancel) { }
                }
            }
            HStack {
                Button("fine") {
                    showAlert.toggle()
                }
                .foregroundColor(.white)
                .font(.headline)
                .frame(height: 70)
                .frame(maxWidth: .infinity)
                .background(Color.accentColor)
                .cornerRadius(10)
                .alert("Бензин", isPresented: $showAlert) {
                    TextField("Сумма", text: $textFielText)
                    Button("OK", action: okFineButtonPressed)
                    Button("Cancel", role: .cancel) { }
                }
                Button("repair") {
                    showAlert.toggle()
                }
                .foregroundColor(.white)
                .font(.headline)
                .frame(height: 70)
                .frame(maxWidth: .infinity)
                .background(Color.accentColor)
                .cornerRadius(10)
                .alert("Бензин", isPresented: $showAlert) {
                    TextField("Сумма", text: $textFielText)
                    Button("OK", action: okRepairButtonPressed)
                    Button("Cancel", role: .cancel) { }
                }
            }
        }
        .padding(14)
    }

    
    func okFuelButtonPressed() {
        listViewModel.addItem(title: textFielText, icon: "fuelpump")
//        presentationMode.wrappedValue.dismiss()
    }
    
    func okTaxButtonPressed() {
        listViewModel.addItem(title: textFielText, icon: "dollarsign.arrow.circlepath")
//        presentationMode.wrappedValue.dismiss()
    }
    
    func okFineButtonPressed() {
        listViewModel.addItem(title: textFielText, icon: "banknote")
//        presentationMode.wrappedValue.dismiss()
    }
    
    func okRepairButtonPressed() {
        listViewModel.addItem(title: textFielText, icon: "gearshape")
//        presentationMode.wrappedValue.dismiss()
    }
}

struct ButtonBlockView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBlockView()
    }
}
