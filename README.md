# ColorConverter

Support of oklch, oklab, xyz, rgb color convertion

<img width="491" alt="282115575-5155e513-6327-485a-900d-03a86c21f3fb" src="https://github.com/DanielSwift1992/ColorConverter/assets/40451130/54a04e57-8520-4245-a73a-34a6763c4060">

#### Usage

oklch color uses p3 color space, it is 25% more colors than rgb
``` swift
import ColorConverter

view.backgroundColor = .oklch(l: 100, c: 0.5, h: 20)
```

#### Use adapters directly
``` swift
let oklchColor = OklchColor(l: 1, c: 0.5, h: 20)
let rgbColor = OklchToClippedRGBAdapter().convert(color: oklchColor)
view.backgroundColor = .init(red: rgbColor.r, green: rgbColor.g, blue: rgbColor.b, alpha: rgbColor.a)
```

#### Combine adapters
``` swift
let xyzColor = XyzColor(x: 3, y: 0.6, z: 0.6)
let rgbColor = Xyz65ToLinierRgbAdapter()
        .combine(with: LinearRgbToNonlinearRgbAdapter())
        .convert(color: xyzColor)
        
view.backgroundColor = .init(red: rgbColor.r, green: rgbColor.g, blue: rgbColor.b, alpha: rgbColor.a)
```

## Swift Package Manager

In your Package.swift:

```swift
let package = Package(
  name: "Example",
  dependencies: [
    .package(url: "https://github.com/DanielSwift1992/ColorConverter.git", from: "0.0.1")
  ],
  targets: [
    .target(name: "Example", dependencies: ["ColorConverter"])
  ]
)
```
