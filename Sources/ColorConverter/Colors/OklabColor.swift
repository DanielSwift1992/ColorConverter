import Foundation

public struct OklabColor: PaletteColor {
    let l: Double
    let a: Double
    let b: Double
    
    public init(l: Double, a: Double, b: Double) {
        self.l = l
        self.a = a
        self.b = b
    }
}
