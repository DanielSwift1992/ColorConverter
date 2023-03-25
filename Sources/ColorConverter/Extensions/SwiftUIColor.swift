import Foundation
import SwiftUI

@available(macOS 10.15, *)
extension Color: PaletteColor { }

@available(macOS 10.15, *)
public extension Color {
    static func oklch(l: Double, c: Double, h: Double) -> Color {
        let oklch = OklchColor(l: l / 100, c: c, h: h)
        return OklchToSwiftUIColorAdapter()
            .convert(color: oklch)
    }
}
