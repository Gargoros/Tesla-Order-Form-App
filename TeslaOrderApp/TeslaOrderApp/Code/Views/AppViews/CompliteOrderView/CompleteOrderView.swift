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
        VStack {
            TopOrderView()
                .padding(.top, 20)
            BottomOrderView()
        }
        .background(Color.white)
        .ignoresSafeArea()
        
    }
}

#Preview {
    CompleteOrderView()
        .environmentObject(OrderViewModel())
}
