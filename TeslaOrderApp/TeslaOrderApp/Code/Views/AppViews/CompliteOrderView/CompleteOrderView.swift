//
//  CompleteOrderView.swift
//  TeslaOrderApp
//
//  Created by MIKHAIL ZHACHKO on 23.11.25.
//

import SwiftUI

struct CompleteOrderView: View {
    @EnvironmentObject var order: OrderViewModel
    
    var body: some View {
        Text("Complete Order View")
    }
}

#Preview {
    CompleteOrderView()
        .environmentObject(OrderViewModel())
}
