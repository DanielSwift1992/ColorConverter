import Foundation

public struct OklabToXyz65Adapter: PaletteColorAdapter {
    public func convert(color oklab: OklabColor) -> XyzColor {
        let l = pow(0.9999999984505197 * oklab.l + 0.3963377921737678 * oklab.a + 0.2158037580607588 * oklab.b, 3)
        let m = pow(1.000000008881761 * oklab.l - 0.1055613423236563 * oklab.a - 0.06385417477170588 * oklab.b, 3)
        let s = pow(1.000000054672411 * oklab.l - 0.08948418209496574 * oklab.a - 1.291485537864092 * oklab.b, 3)
        
        let x = 1.227013851103521 * l - 0.5577999806518222 * m + 0.2812561489664678 * s
        let y = -0.04058017842328060 * l + 1.112256869616830 * m - 0.07167667866560121 * s
        let z = -0.07638128450570690 * l - 0.4214819784180127 * m + 1.586163220440795 * s
        
        return .init(x: x, y: y, z: z)
    }
}
