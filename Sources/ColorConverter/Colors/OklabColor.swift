import Foundation

public struct OklabColor: PaletteColor {
    public let l: Double
    public let a: Double
    public let b: Double
    
    public init<T: BinaryFloatingPoint>(l: T, a: T, b: T) {
        self.l = Double(l)
        self.a = Double(a)
        self.b = Double(b)
    }
}
