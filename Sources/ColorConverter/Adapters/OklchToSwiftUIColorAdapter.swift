import Foundation
import SwiftUI

@available(iOS 13.0, *)
@available(macOS 10.15, *)
public struct OklchToSwiftUIColorAdapter: PaletteColorAdapter {
    
    public func convert(color oklch: OklchColor) -> Color {
        let p3Color = OklchToP3Adapter()
            .convert(color: oklch)
        
        return .init(
            .displayP3,
            red: p3Color.r,
            green: p3Color.g,
            blue: p3Color.b,
            opacity: p3Color.a
        )
    }
}
