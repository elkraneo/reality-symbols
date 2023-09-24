# README

1. Extract symbols with [SymbolKit](https://github.com/apple/swift-docc-symbolkit)
2. Decode and select
3. Generate `.swift` files with GYB


## SymbolKit

### Extract iOS symbols

```
swift symbolgraph-extract \
 -module-name RealityFoundation \
 -target arm64-apple-ios17.0 \
 -output-dir ~/Desktop \
 -pretty-print \
 -sdk /Applications/Xcode-15.0.0-Release.Candidate.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS17.0.sdk
```

### Extract macOS symbols

```
swift symbolgraph-extract \
 -module-name RealityFoundation \
 -target arm64-apple-macos14.0 \
 -output-dir ~/Desktop \
 -pretty-print \
 -sdk /Applications/Xcode-15.0.0-Release.Candidate.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.0.sdk
```
 
### Extract xrOS symbols

```
swift symbolgraph-extract \
 -module-name RealityFoundation \
 -target arm64-apple-xros1.0 \
 -output-dir ~/Desktop \
 -pretty-print \
 -sdk /Applications/Xcode-15.0.0-Beta.8.app/Contents/Developer/Platforms/XROS.platform/Developer/SDKs/XROS1.0.sdk
```

## GYB

### Generate Entity types

```
./gyb Entity+Type.swift.gyb  \
   -o Entity+Type.swift \
   --line-directive ''
```

### Generate Component types

```
./gyb Component+Type.swift.gyb  \
   -o Component+Type.swift \
   --line-directive ''
```

