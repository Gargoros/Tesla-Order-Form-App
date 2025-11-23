//
//  TeslaOrderAppApp.swift
//  TeslaOrderApp
//
//  Created by MIKHAIL ZHACHKO on 23.11.25.
//

import SwiftUI

@main
struct TeslaOrderAppApp: App {
    @StateObject private var order = OrderViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(order)
        }
    }
}
