//
//  ContentView.swift
//  TeslaOrderApp
//
//  Created by MIKHAIL ZHACHKO on 23.11.25.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var order: OrderViewModel
    
    var body: some View {
        Text("Content View")
    }
}


#Preview {
    ContentView()
        .environmentObject(OrderViewModel())
}
