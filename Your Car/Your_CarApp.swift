//
//  Your_CarApp.swift
//  Your Car
//
//  Created by Kirill Frolovskiy on 15.10.2022.
//

import SwiftUI

@main
struct Your_CarApp: App {

    @StateObject var listViewModel: ListViewModel = ListViewModel()

    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
