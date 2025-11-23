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
        ZStack {
            NavigationView {
                ScrollView(.vertical, showsIndicators: true) {
                    VStack(spacing: 0){
                        CarDetailsView()
                            .frame(height: 600)
                        FormView()
                            .environmentObject(order)
                            .frame(height: 450)
                    }
                    .padding(.top, 40)
                }
                .hideNavigationBar()
            }
            CompleteOrderView()
                .environmentObject(order)
                .opacity(order.isOrderCompleteVisible ? 1.0 : 0.0)
                .animation(.default, value: order.isCancelOrderVisible)
            
        }
    }
}


#Preview {
    ContentView()
        .environmentObject(OrderViewModel())
}
