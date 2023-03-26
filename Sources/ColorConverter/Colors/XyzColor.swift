import Foundation

public struct XyzColor: PaletteColor {
    let x: Double
    let y: Double
    let z: Double
    
    public init(x: Double, y: Double, z: Double) {
        self.x = x
        self.y = y
        self.z = z
    }
}
