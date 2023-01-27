//
//  AddView.swift
//  Your Car
//
//  Created by Kirill Frolovskiy on 16.10.2022.
//

import SwiftUI

struct AddView: View {
    
    var body: some View {
        ButtonsView()
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
