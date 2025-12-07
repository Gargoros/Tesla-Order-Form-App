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
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                TopOrderView()
                BottomOrderView()
                    .environmentObject(order)
                
            }.padding(.horizontal, 10)
            
            CancelOrderView()
                        .opacity(order.isCancelOrderVisible ? 1 : 0)
        }
        
    }
}

#Preview {
    CompleteOrderView()
        .environmentObject(OrderViewModel())
}
