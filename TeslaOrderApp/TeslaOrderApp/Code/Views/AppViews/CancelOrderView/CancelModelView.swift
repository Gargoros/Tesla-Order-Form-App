//
//  CancelModelView.swift
//  TeslaOrderApp
//
//  Created by MIKHAIL ZHACHKO on 23.11.25.
//

import SwiftUI

struct CancelModelView: View {
    @EnvironmentObject var order: OrderViewModel
    
    var body: some View {
        VStack {
            
        }
        .padding(.horizontal, 10)
        .frame(minWidth: 0, maxWidth: .infinity)
        .frame(height: 190)
        .background(Color.white)
        .cornerRadius(10)
    }
    var header: some View {
        HStack {
            VStack(alignment: .leading, spacing: -10) {
                Text("CANCEL ORDER?")
                    .custom(font: .bold, size: 30)
                
                Text("You’ll return to the car details")
                    .custom(font: .light, size: 22)
            }
            
            Spacer()
        }
    }
    var buttons: some View {
        HStack {
            Button("NO, KEEP IT") {
                self.order.isCancelOrderVisible.toggle()
                self.order.isModalVisible.toggle()
            }
            .buttonStyle(TeslaButtonStyle())
            .background(Color.baseWhite)
            .cornerRadius(8)
            
            Spacer()
            
            Button(action: {
                self.order.isCancelOrderVisible.toggle()
                self.order.isModalVisible.toggle()
            }) {
                Text("CANCEL")
            }
            .buttonStyle(TeslaButtonStyle())
            .background(Color.baseCardinal)
            .cornerRadius(8)
            .foregroundColor(Color.white)
        }
    }
}

#Preview {
    CancelModelView()
}
