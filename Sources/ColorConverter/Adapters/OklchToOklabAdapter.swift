import Foundation

public struct OklchToOklabAdapter: PaletteColorAdapter {
    
    public init() { }
    
    public func convert(color oklch: OklchColor) -> OklabColor {
        let a = oklch.c * cos((oklch.h / 180) * .pi)
        let b = oklch.c * sin((oklch.h / 180) * .pi)
        
        return .init(l: oklch.l, a: a, b: b)
    }
}
