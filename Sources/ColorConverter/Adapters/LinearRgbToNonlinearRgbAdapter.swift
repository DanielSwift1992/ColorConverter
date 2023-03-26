import Foundation

public struct LinearRgbToNonlinearRgbAdapter: PaletteColorAdapter {
    
    public init() { }
    
    public func convert(color rgb: RgbColor) -> RgbColor {
        .init(
            r: linearToNonlinear(rgb.r),
            g: linearToNonlinear(rgb.g),
            b: linearToNonlinear(rgb.b),
            a: rgb.a
        )
    }
    
    private func linearToNonlinear(_ c: Double) -> Double {
        let abs = fabs(c)
        return abs > 0.0031308
        ? (c.signum * (1.055 * pow(abs, 1 / 2.4) - 0.055))
        : c * 12.92
    }
}
