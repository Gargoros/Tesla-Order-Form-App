//
//  CarInfoDetailsView.swift
//  TeslaOrderApp
//
//  Created by MIKHAIL ZHACHKO on 23.11.25.
//

import SwiftUI

struct CarInfoDetailsView: View {

    
    var body: some View {
        HStack{
            column01
            Spacer()
            column02
            Spacer()
            column03
        }
        .padding(.top, 15)
    }
    var column01: some View {
        VStack(alignment: .leading) {
            Text("Transmission")
                .custom(font: .medium, size: 16)
                .foregroundStyle(Color.baseDarkGray)
            Text("Automatic")
                .custom(font: .medium, size: 22)
        }
    }
    var column02: some View {
        VStack(alignment: .leading) {
            Text("Class")
                .custom(font: .medium, size: 16)
                .foregroundStyle(Color.baseDarkGray)
            Text("Luxury")
                .custom(font: .medium, size: 22)
        }
    }
    var column03: some View {
        VStack(alignment: .leading) {
            Text("Year")
                .custom(font: .medium, size: 16)
                .foregroundStyle(Color.baseDarkGray)
            Text("2020")
                .custom(font: .medium, size: 22)
        }
    }
}

#Preview {
    CarInfoDetailsView()
}
