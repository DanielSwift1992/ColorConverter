#if os(iOS) || os(tvOS) || os(watchOS)
import Foundation
import UIKit

public struct OklchToUIColorAdapter: PaletteColorAdapter {
    public func convert(color oklch: OklchColor) -> UIColor {
        let p3Color = OklchToP3Adapter()
            .convert(color: oklch)
        
        return .init(
            displayP3Red: p3Color.r,
            green: p3Color.g,
            blue: p3Color.b,
            alpha: p3Color.a
        )
    }
}
#endif
