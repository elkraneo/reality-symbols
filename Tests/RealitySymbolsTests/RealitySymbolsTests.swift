import XCTest

@testable import RealitySymbols

final class RealitySymbolsTests: XCTestCase {
  let basePath = "/Users/cristian/Developer/external/RealitySymbols/source/reality-symbols/Sources/RealitySymbols/Extracted"

  func testSingle() throws {
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
  
  func testMultiple() {
    let symbolGraphs = allSymbolGraphs()

    let entitiesOutputPath = basePath.appending("/Unified/Processed/Entities.json")
    createEntitiesFile(from: symbolGraphs, at: entitiesOutputPath)

    let componentsOutputPath = basePath.appending("/Unified/Processed/Components.json")
    createComponentsFile(from: symbolGraphs, at: componentsOutputPath)
  }
  
  
  func testUnified() {
    // let unified = unifiedSymbolGraph()!

    // let n = unified.symbols.values.map({ $0.names.values.map(\.title) })

    // let n2 = unified.symbols.values
    //   //      .filter({ $0.kind.values.map(\.displayName).contains("E") })
    //   //      .map(\.names)
    //   .map({ $0.names.values })
    //
    // print(n2)

    //let entity = unified.symbols.values.filter({ $0.kind. == .inheritsFrom })

    //    let entity = symbolGraph.symbols.values.first(where: { $0.names.title == "Entity" })!
    //
    //    let subclassesIdentifiers = symbolGraph.relationships
    //      .filter({ $0.kind == .inheritsFrom })
    //      .filter({ $0.target == entity.identifier.precise })
    //      .map(\.source)
    //
    //    let subclasses = subclassesIdentifiers.compactMap { identifier in
    //      symbolGraph.symbols.values
    //        .filter({ $0.kind.identifier == .class })
    //        .first(where: { $0.identifier.precise == identifier })
    //    }

    //    let encoder = JSONEncoder()
    //    encoder.outputFormatting.insert(.sortedKeys)
    //    encoder.outputFormatting.insert(.prettyPrinted)
    //    let data = try! encoder.encode(entity)
    //    FileManager.default.createFile(atPath: "/Users/cristian/Desktop/c.json", contents: data)
  }
}
