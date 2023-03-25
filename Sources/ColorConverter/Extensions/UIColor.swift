#if os(iOS) || os(tvOS) || os(watchOS)
import Foundation
import UIKit

extension UIColor {
    static func oklch(l: Double, c: Double, h: Double) -> UIColor {
        let oklch = OklchColor(l: l / 100, c: c, h: h)
        return OklchToUIColorAdapter()
            .convert(color: oklch)
    }
}
#endif
