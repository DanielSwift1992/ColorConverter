import Foundation

public struct ColorAdapterCombiner<FromAdapter: PaletteColorAdapter, ToAdapter: PaletteColorAdapter>:
    PaletteColorAdapter where FromAdapter.To == ToAdapter.From {
    
    public let fromAdapter: FromAdapter
    public let toAdapter: ToAdapter
    
    public func convert(color: FromAdapter.From) -> ToAdapter.To {
        let color = fromAdapter.convert(color: color)
        return toAdapter.convert(color: color)
    }
}
