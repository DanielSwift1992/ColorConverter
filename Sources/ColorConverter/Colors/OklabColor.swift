import Foundation

public struct OklabColor: PaletteColor {
    public let l: Double
    public let a: Double
    public let b: Double
    
    public init(l: Double, a: Double, b: Double) {
        self.l = l
        self.a = a
        self.b = b
    }
}
