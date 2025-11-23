//
//  CancelOrderView.swift
//  TeslaOrderApp
//
//  Created by MIKHAIL ZHACHKO on 23.11.25.
//

import SwiftUI

struct CancelOrderView: View {
    @EnvironmentObject var order: OrderViewModel
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.clear)
                .background(VibrancyBackground())
                .ignoresSafeArea()
            ZStack{
                Rectangle()
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(height: 190)
                    .background(Color.black)
                    .cornerRadius(10)
                    .opacity(0.2)
                    .blur(radius: 10)
                CancelModelView()
            }
            .padding(.horizontal, 10)
            .animation(.default, value: order.isCancelOrderVisible)
            .onAppear{
                self.order.isModalVisible = true
            }
            .onTapGesture {
                self.order.isCancelOrderVisible.toggle()
                self.order.isModalVisible.toggle()
            }
        }
    }
}

#Preview {
    CancelOrderView()
}
