//
//  BottomOrderView.swift
//  TeslaOrderApp
//
//  Created by MIKHAIL ZHACHKO on 23.11.25.
//

import SwiftUI

struct BottomOrderView: View {
    @EnvironmentObject var order: OrderViewModel
    
    var body: some View {
        VStack {
            info
            map
            bottom
            Spacer()
        }
        .padding(.horizontal, 10)
    }
    var info: some View {
        HStack{
            HStack(spacing: 0) {
                Text("1")
                    .custom(font: .medium, size: 22)
                Text("car")
                    .custom(font: .light, size: 22)
            }
            Spacer()
            HStack(spacing: 4) {
                Text("2")
                    .custom(font: .medium, size: 22)
                Text("hours")
                    .custom(font: .light, size: 22)
            }
            Spacer()
            HStack(spacing: 4) {
                Text("$160")
                    .custom(font: .medium, size: 22)
            }
        }
        .padding(.horizontal, 10)
        .frame(height: 55)
        .frame(minWidth: 0, maxWidth: .infinity)
        .background(Color.baseGray)
        .cornerRadius(10)
    }
    var map: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            Image("sample-map")
                .resizable()
                .scaledToFit()
                .padding(.bottom, 30)
            HStack{
                Image(systemName: "clock")
                HStack(spacing: 4) {
                    Text("The car will arrive in")
                        .custom(font: .light, size: 22)
                    Text("20 mins")
                        .custom(font: .medium, size: 22)
                    Spacer()
                    Image("disclosure-indicator")
                }
                
            }
            .frame(height: 40)
            .padding(.horizontal, 5)
            .background(Color.white)
            .cornerRadius(5)
            .offset(y: -35)
            .padding(.horizontal, 5)
        }
        .frame(maxWidth: 370)
    }
    var bottom: some View {
        Button {
            self.order.isCancelOrderVisible.toggle()
        } label: {
            Text("CANCEL ORDER")
        }
        .frame(height: 55)
        .frame(minWidth: 0, maxWidth: .infinity)
        .background(Color.baseGray)
        .buttonStyle(PlainButtonStyle())
        .cornerRadius(10)
        .foregroundStyle(Color.baseCardinal)
        .custom(font: .bold, size: 28)

    }
}

#Preview {
    BottomOrderView()
        .environmentObject(OrderViewModel())
}
