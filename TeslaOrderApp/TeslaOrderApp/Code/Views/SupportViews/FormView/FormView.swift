//
//  FormView.swift
//  TeslaOrderApp
//
//  Created by MIKHAIL ZHACHKO on 23.11.25.
//

import SwiftUI
import Combine

struct FormView: View {
    @EnvironmentObject var order: OrderViewModel
    
    init() {
    }

    var body: some View {
        Text("Form View")
    }


}

#Preview {
    FormView()
        .environmentObject(OrderViewModel())
}
