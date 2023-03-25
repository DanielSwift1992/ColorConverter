import Foundation

public struct OklchToP3Adapter: PaletteColorAdapter {
    public func convert(color oklch: OklchColor) -> P3Color {
        OklchToOklabAdapter()
            .combine(with: OklabToXyz65Adapter())
            .combine(with: Xyz65ToP3Adapter())
            .convert(color: oklch)
    }
}
