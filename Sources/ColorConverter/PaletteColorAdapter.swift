import Foundation

public protocol PaletteColorAdapter {
    associatedtype From: PaletteColor
    associatedtype To: PaletteColor
    
    func convert(color: From) -> To
}

public extension PaletteColorAdapter {
    func combine<Adapter: PaletteColorAdapter>(
        with adapter: Adapter
    ) -> ColorAdapterCombiner<Self, Adapter> {
        ColorAdapterCombiner(fromAdapter: self, toAdapter: adapter)
    }
}
