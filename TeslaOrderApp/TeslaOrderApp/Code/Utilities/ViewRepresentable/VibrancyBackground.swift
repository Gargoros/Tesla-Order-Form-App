//
//  VibrancyBackground.swift
//  TeslaOrderApp
//
//  Created by MIKHAIL ZHACHKO on 23.11.25.
//

import Foundation
import SwiftUI

struct VibrancyBackground: UIViewRepresentable {
    
    var style: UIBlurEffect.Style = .light
    
    func makeUIView(context: UIViewRepresentableContext<VibrancyBackground>) -> UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect(style: style))
    }
    func updateUIView(_ uiView: UIVisualEffectView, context: Context){
        uiView.effect = UIBlurEffect(style: style)
    }
}
