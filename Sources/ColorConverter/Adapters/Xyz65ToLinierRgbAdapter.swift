import Foundation

public struct Xyz65ToLinierRgbAdapter: PaletteColorAdapter {
    
    public init() { }
    
    public func convert(color xyz: XyzColor) -> RgbColor {
        let r = xyz.x * 3.2409699419045226 - xyz.y * 1.5373831775700939 - 0.4986107602930034 * xyz.z
        let g = xyz.x * -0.9692436362808796 + xyz.y * 1.8759675015077204 + 0.0415550574071756 * xyz.z
        let b = xyz.x * 0.0556300796969936 - xyz.y * 0.2039769588889765 + 1.0569715142428784 * xyz.z
        
        return .init(r: r, g: g, b: b, a: 1)
    }
}
