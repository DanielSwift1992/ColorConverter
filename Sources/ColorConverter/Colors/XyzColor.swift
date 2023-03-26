import Foundation

public struct XyzColor: PaletteColor {
    public let x: Double
    public let y: Double
    public let z: Double
    
    public init<T: BinaryFloatingPoint>(x: T, y: T, z: T) {
        self.x = Double(x)
        self.y = Double(y)
        self.z = Double(z)
    }
}
