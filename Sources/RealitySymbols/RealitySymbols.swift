import Foundation
import SymbolKit

let url_iOS = Bundle.module.url(
  forResource: "RealityFoundation.symbols",
  withExtension: "json",
  subdirectory: "Extracted/iOS/Symbols"
)!

let url_macOS = Bundle.module.url(
  forResource: "RealityFoundation.symbols",
  withExtension: "json",
  subdirectory: "Extracted/macOS/Symbols"
)!

let url_xrOS = Bundle.module.url(
  forResource: "RealityFoundation.symbols",
  withExtension: "json",
  subdirectory: "Extracted/xrOS/Symbols"
)!

// MARK: - Decoding

func iOSSymbolGraph() -> SymbolGraph {
  let data = try! Data(contentsOf: url_iOS)
  let symbolGraph = try! JSONDecoder().decode(SymbolGraph.self, from: data)
  return symbolGraph
}

func macOSSymbolGraph() -> SymbolGraph {
  let data = try! Data(contentsOf: url_macOS)
  let symbolGraph = try! JSONDecoder().decode(SymbolGraph.self, from: data)
  return symbolGraph
}

func xrOSSymbolGraph() -> SymbolGraph {
  let data = try! Data(contentsOf: url_xrOS)
  let symbolGraph = try! JSONDecoder().decode(SymbolGraph.self, from: data)
  return symbolGraph
}

func allSymbolGraphs() -> [SymbolGraph] {
  [
    iOSSymbolGraph(),
    macOSSymbolGraph(),
    xrOSSymbolGraph(),
  ]
}

//TODO: explore `UnifiedSymbolGraph`
func unifiedSymbolGraph() -> UnifiedSymbolGraph? {
  /*
   let encoder = JSONEncoder()
   encoder.outputFormatting.insert(.sortedKeys)
   encoder.outputFormatting.insert(.prettyPrinted)

   let a = try! encoder.encode(symbolGraph)
   FileManager.default.createFile(atPath: "/Users/cristian/Desktop/a.json", contents: a)

   let unified = UnifiedSymbolGraph.init(fromSingleGraph: symbolGraph, at: url)
   let b = try! encoder.encode(unified)
   FileManager.default.createFile(atPath: "/Users/cristian/Desktop/b.json", contents: b)
   */

  //MARK: Unify
  let unifiedSymbolGraph = UnifiedSymbolGraph(fromSingleGraph: iOSSymbolGraph(), at: url_iOS)
  unifiedSymbolGraph?.mergeGraph(graph: macOSSymbolGraph(), at: url_macOS)
  unifiedSymbolGraph?.mergeGraph(graph: xrOSSymbolGraph(), at: url_xrOS)

  return unifiedSymbolGraph
}

//MARK: -

extension SymbolGraph.Symbol: Equatable {
  public static func == (
    lhs: SymbolKit.SymbolGraph.Symbol,
    rhs: SymbolKit.SymbolGraph.Symbol
  ) -> Bool {
    lhs.identifier == rhs.identifier
  }
}

extension SymbolGraph.Symbol: Hashable {
  public func hash(into hasher: inout Hasher) {
    hasher.combine(identifier)
    hasher.combine(absolutePath)
  }
}
