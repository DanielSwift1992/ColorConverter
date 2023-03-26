import Foundation

public struct OklchColor: PaletteColor {
    public let l: Double
    public let c: Double
    public let h: Double
    
    public init(l: Double, c: Double, h: Double) {
        self.l = l
        self.c = c
        self.h = h
    }
}
