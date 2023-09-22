import XCTest

@testable import RealitySymbols

final class RealitySymbolsTests: XCTestCase {
  func testExample() throws {
    let c = extractComponents(from: xrOSSymbolGraph())
    createComponentsFile(c)
    
    let e = extractEntities(from: xrOSSymbolGraph())
    createEntitiesFile(e)
  }
}
