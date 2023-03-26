import Foundation
import SwiftUI

@available(iOS 13.0, *)
@available(macOS 10.15, *)
extension Color: PaletteColor { }

@available(iOS 13.0, *)
@available(macOS 10.15, *)
public extension Color {
    static func oklch<T: BinaryFloatingPoint>(l: T, c: T, h: T) -> Color {
        let oklch = OklchColor(l: l / 100, c: c, h: h)
        return OklchToSwiftUIColorAdapter()
            .convert(color: oklch)
    }
}
