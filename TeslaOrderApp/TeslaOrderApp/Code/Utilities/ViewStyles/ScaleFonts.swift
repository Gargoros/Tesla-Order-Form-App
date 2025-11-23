//
//  ScaleFonts.swift
//  TeslaOrderApp
//
//  Created by MIKHAIL ZHACHKO on 23.11.25.
//

import Foundation
import SwiftUI

@available(iOS 13, macCatalyst 13, tvOS 13, watchOS 6, *)
struct ScaledFont: ViewModifier {
    @Environment(\.sizeCategory) var sizeCategory
    var name: String
    var size: CGFloat

    func body(content: Content) -> some View {
       let scaledSize = UIFontMetrics.default.scaledValue(for: size)
        return content.font(.custom(name, size: scaledSize))
    }
}

@available(iOS 13, macCatalyst 13, tvOS 13, watchOS 6, *)
extension View {

    func custom(font: CustomFont, size: CGFloat) -> some View {
        return scaledFont(name: font.rawValue, size: size)
    }

    func scaledFont(name: String, size: CGFloat) -> some View {
        return self.modifier(ScaledFont(name: name, size: size))
    }
}

enum CustomFont: String {
    case black = "AdventPro-Black"
    case bold = "AdventPro-Bold"
    case extraBold = "AdventPro-ExtraBold"
    case extraLight = "AdventPro-ExtraLight"
    case light = "AdventPro-Light"
    case medium = "AdventPro-Medium"
    case regular = "AdventPro-Regular"
    case semiBold = "AdventPro-SemiBold"
    case thin = "AdventPro-Thin"
}

