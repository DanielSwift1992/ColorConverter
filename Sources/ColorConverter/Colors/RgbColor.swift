import Foundation

public struct RgbColor: PaletteColor {
    public let r: Double
    public let g: Double
    public let b: Double
    public let a: Double
    
    public init<T: BinaryFloatingPoint>(r: T, g: T, b: T, a: T) {
        self.r = Double(r)
        self.g = Double(g)
        self.b = Double(b)
        self.a = Double(a)
    }
}
