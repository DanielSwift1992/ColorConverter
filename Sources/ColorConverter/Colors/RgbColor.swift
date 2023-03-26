import Foundation

public struct RgbColor: PaletteColor {
    let r: Double
    let g: Double
    let b: Double
    let a: Double
    
    public init(r: Double, g: Double, b: Double, a: Double) {
        self.r = r
        self.g = g
        self.b = b
        self.a = a
    }
}
