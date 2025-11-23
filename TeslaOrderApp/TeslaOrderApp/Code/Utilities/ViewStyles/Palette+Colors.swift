//
//  Palette+Colors.swift
//  TeslaOrderApp
//
//  Created by MIKHAIL ZHACHKO on 23.11.25.
//

import SwiftUI
import Foundation

extension Color {
    static let baseCardinal = Color(.caardinal)
    static let baseGray = Color(.isabelline)
    static let baseDarkGray = Color(.ddarkGray)
    static let baseGreen = Color(.mediumJungleGreen)
    static let baseWhite = Color(.whiteSmoke)
}

extension UIColor {
    static let baseCardinal = Color(named: "Cardinal")
    static let baseGray = Color(named: "Isabelline")
    static let baseDarkGray = Color(named: "DdarkGray")
    static let baseGreen = Color(named: "MediumJungleGreen")
    static let baseWhite = Color(named: "WhiteSmoke")


    private static func Color(named key: String) -> UIColor {
       if let color = UIColor(named: key, in: .main, compatibleWith: nil) {
           return color
       }

       return .black
    }
}
