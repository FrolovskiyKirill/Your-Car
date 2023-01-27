//
//  ButtonsView.swift
//  Your Car
//
//  Created by Kirill Frolovskiy on 26.01.2023.
//

import SwiftUI

struct ButtonsView: View {
    var body: some View {
        HStack {
            FuelButtonView(iconName: "fuelpump")
            Spacer()
            FineButtonView(iconName: "car.rear.waves.up")
            Spacer()
            RepairButtonView(iconName: "engine.combustion")
            Spacer()
            TaxButtonView(iconName: "dollarsign.arrow.circlepath")
        }
        .padding(14)
    }
        
}

struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView()
    }
}
