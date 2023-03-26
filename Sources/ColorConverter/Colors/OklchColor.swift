import Foundation

public struct OklchColor: PaletteColor {
    public let l: Double
    public let c: Double
    public let h: Double
    
    public init<T: BinaryFloatingPoint>(l: T, c: T, h: T) {
        self.l = Double(l)
        self.c = Double(c)
        self.h = Double(h)
    }
}
