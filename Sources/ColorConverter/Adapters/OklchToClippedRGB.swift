import Foundation

public struct OklchToClippedRGBAdapter: PaletteColorAdapter {
    public func convert(color oklch: OklchColor) -> RgbColor {
        let rgb = OklchToOklabAdapter()
            .combine(with: OklabToXyz65Adapter())
            .combine(with: Xyz65ToLinierRgbAdapter())
            .combine(with: LinearRgbToNonlinearRgbAdapter())
            .convert(color: oklch)
        
        return .init(
            r: rgb.r.clipped(to: 0...1),
            g: rgb.g.clipped(to: 0...1),
            b: rgb.b.clipped(to: 0...1),
            a: rgb.a
        )
    }
}
