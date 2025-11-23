//
//  TopOrderView.swift
//  TeslaOrderApp
//
//  Created by MIKHAIL ZHACHKO on 23.11.25.
//

import SwiftUI

struct TopOrderView: View {
    @EnvironmentObject var order: OrderViewModel
    
    var body: some View {
        Text("Top Order View")
    }
}

#Preview {
    TopOrderView()
        .environmentObject(OrderViewModel())
}
