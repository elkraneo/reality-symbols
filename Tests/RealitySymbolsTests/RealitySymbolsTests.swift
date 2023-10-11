import XCTest

@testable import RealitySymbols

final class RealitySymbolsTests: XCTestCase {
  let basePath = "/Users/cristian/Developer/external/RealitySymbols/source/reality-symbols/Sources/RealitySymbols/Extracted"

  func testIndividual() throws {
    // iOS
    let entitiesOutputPath_iOS = basePath.appending("/iOS/Processed/Entities.json")
    createEntitiesFile(from: iOSSymbolGraph(), at: entitiesOutputPath_iOS)
    
    let componentsOutputPath_iOS = basePath.appending("/iOS/Processed/Components.json")
    createComponentsFile(from: iOSSymbolGraph(), at: componentsOutputPath_iOS)

    // macOS
    let entitiesOutputPath_macOS = basePath.appending("/macOS/Processed/Entities.json")
    createEntitiesFile(from: macOSSymbolGraph(), at: entitiesOutputPath_macOS)
    
    let componentsOutputPath_macOS = basePath.appending("/macOS/Processed/Components.json")
    createComponentsFile(from: macOSSymbolGraph(), at: componentsOutputPath_macOS)

    // xrOS
    let entitiesOutputPath_xrOS = basePath.appending("/xrOS/Processed/Entities.json")
    createEntitiesFile(from: xrOSSymbolGraph(), at: entitiesOutputPath_xrOS)
    
    let componentsOutputPath_xrOS = basePath.appending("/xrOS/Processed/Components.json")
    createComponentsFile(from: xrOSSymbolGraph(), at: componentsOutputPath_xrOS)
  }
  
  func testUnified() {
    let symbolGraphs = allSymbolGraphs()

    let entitiesOutputPath = basePath.appending("/Unified/Processed/Entities.json")
    createEntitiesFile(from: symbolGraphs, at: entitiesOutputPath)

    let componentsOutputPath = basePath.appending("/Unified/Processed/Components.json")
    createComponentsFile(from: symbolGraphs, at: componentsOutputPath)
  }
}
