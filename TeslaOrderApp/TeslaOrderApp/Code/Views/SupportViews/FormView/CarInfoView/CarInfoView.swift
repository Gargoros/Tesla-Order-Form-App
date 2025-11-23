//
//  CarInfoView.swift
//  TeslaOrderApp
//
//  Created by MIKHAIL ZHACHKO on 23.11.25.
//

import SwiftUI

struct CarInfoView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            CarInfoBasicView()
            CarInfoDetailsView()
            CarInfoPhotosView()
            Spacer()
        }
        .frame(height: 320)
        .padding(.horizontal, 20)
    }
}

#Preview {
    CarInfoView()
}
