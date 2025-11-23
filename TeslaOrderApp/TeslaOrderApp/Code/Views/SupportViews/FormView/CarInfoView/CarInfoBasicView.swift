//
//  CarInfoBasicView.swift
//  TeslaOrderApp
//
//  Created by MIKHAIL ZHACHKO on 23.11.25.
//

import SwiftUI

struct CarInfoBasicView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            HStack{
                Text("TESLA MODEL S")
                    .custom(font: .bold, size: 28)
                Spacer()
                Image(systemName: "info.circle")
                    .font(.system(size: 28))
                    .offset(y: -2)
            }
            VStack(alignment: .leading, spacing: 0){
                Text("$80/hr")
                    .custom(font: .medium, size: 19)
                    .foregroundStyle(Color.baseDarkGray)
                HStack{
                    ForEach(0..<5) { _ in
                        Image(systemName: "star.fill")
                            .font(.system(size: 15))
                    }
                }
            }
        }
    }
}

#Preview() {
    CarInfoBasicView()
        
}

