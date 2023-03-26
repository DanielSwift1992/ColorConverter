import Foundation

public struct OklchColor: PaletteColor {
    let l: Double
    let c: Double
    let h: Double
    
    public init(l: Double, c: Double, h: Double) {
        self.l = l
        self.c = c
        self.h = h
    }
}
