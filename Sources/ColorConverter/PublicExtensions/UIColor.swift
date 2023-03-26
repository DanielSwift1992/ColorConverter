#if os(iOS) || os(tvOS) || os(watchOS)
import Foundation
import UIKit

extension UIColor: PaletteColor { }

public extension UIColor {
    static func oklch<T: BinaryFloatingPoint>(l: T, c: T, h: T) -> UIColor {
        let oklch = OklchColor(l: l / 100, c: c, h: h)
        return OklchToUIColorAdapter()
            .convert(color: oklch)
    }
}
#endif
