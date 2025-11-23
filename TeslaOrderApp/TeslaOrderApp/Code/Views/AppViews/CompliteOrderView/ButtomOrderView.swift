//
//  ButtomOrderView.swift
//  TeslaOrderApp
//
//  Created by MIKHAIL ZHACHKO on 23.11.25.
//

import SwiftUI

struct ButtomOrderView: View {
    @EnvironmentObject var order: OrderViewModel
    
    var body: some View {
        Text("Bottom Order View")
    }
}

#Preview {
    ButtomOrderView()
        .environmentObject(OrderViewModel())
}
