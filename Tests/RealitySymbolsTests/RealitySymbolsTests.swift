import XCTest

@testable import RealitySymbols

final class RealitySymbolsTests: XCTestCase {
  func testExample() throws {
    let componentsOutputPath_iOS = "/Users/cristian/Developer/external/RealitySymbols/source/reality-symbols/Sources/RealitySymbols/Resources/iOS/Processed/Components.json"
    createComponentsFile(from: iOSSymbolGraph(), at: componentsOutputPath_iOS)

    let entitiesOutputPath_iOS = "/Users/cristian/Developer/external/RealitySymbols/source/reality-symbols/Sources/RealitySymbols/Resources/iOS/Processed/Entities.json"
    createEntitiesFile(from: iOSSymbolGraph(), at: entitiesOutputPath_iOS)
    
    let componentsOutputPath_macOS = "/Users/cristian/Developer/external/RealitySymbols/source/reality-symbols/Sources/RealitySymbols/Resources/macOS/Processed/Components.json"
    createComponentsFile(from: macOSSymbolGraph(), at: componentsOutputPath_macOS)

    let entitiesOutputPath_macOS = "/Users/cristian/Developer/external/RealitySymbols/source/reality-symbols/Sources/RealitySymbols/Resources/macOS/Processed/Entities.json"
    createEntitiesFile(from: macOSSymbolGraph(), at: entitiesOutputPath_macOS)
    
    let componentsOutputPath_xrOS = "/Users/cristian/Developer/external/RealitySymbols/source/reality-symbols/Sources/RealitySymbols/Resources/xrOS/Processed/Components.json"
    createComponentsFile(from: xrOSSymbolGraph(), at: componentsOutputPath_xrOS)

    let entitiesOutputPath_xrOS = "/Users/cristian/Developer/external/RealitySymbols/source/reality-symbols/Sources/RealitySymbols/Resources/xrOS/Processed/Entities.json"
    createEntitiesFile(from: xrOSSymbolGraph(), at: entitiesOutputPath_xrOS)
  }
}
