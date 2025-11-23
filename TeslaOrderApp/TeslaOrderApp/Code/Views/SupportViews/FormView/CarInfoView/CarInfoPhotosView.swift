//
//  CarInfoPhotosView.swift
//  TeslaOrderApp
//
//  Created by MIKHAIL ZHACHKO on 23.11.25.
//

import SwiftUI

struct CarInfoPhotosView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            Text("Car Interior")
                .custom(font: .medium, size: 22)
                .foregroundStyle(Color.baseDarkGray)
            HStack{
                Image("pic1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 170, height: 94)
                    .cornerRadius(10)
                Image("pic2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 170, height: 94)
                    .cornerRadius(10)
                
            }
            .frame(height: 94)
        }
        .padding(.top, 10)
    }
}

#Preview {
    CarInfoPhotosView()
}
