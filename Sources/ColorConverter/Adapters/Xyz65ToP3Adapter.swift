import Foundation

public struct Xyz65ToP3Adapter: PaletteColorAdapter {
    public func convert(color xyz: XyzColor) -> P3Color {
        let r = xyz.x * 2.4934969119414263 - xyz.y * 0.9313836179191242 - 0.402710784450717 * xyz.z
        let g = xyz.x * -0.8294889695615749 + xyz.y * 1.7626640603183465 + 0.0236246858419436 * xyz.z
        let b = xyz.x * 0.0358458302437845 - xyz.y * 0.0761723892680418 + 0.9568845240076871 * xyz.z
        
        let rgbAdapter = LinearRgbToNonlinearRgbAdapter()
        let color = RgbColor(r: r, g: g, b: b, a: 1)
        let p3 = rgbAdapter.convert(color: color)
        
        return .init(r: p3.r, g: p3.g, b: p3.b, a: p3.a)
    }
}
