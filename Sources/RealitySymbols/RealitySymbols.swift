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

// MARK: - Extract

// MARK: Entities

private func extractEntitiesSymbols(from symbolGraph: SymbolGraph) -> [SymbolGraph.Symbol] {
  let entity = symbolGraph.symbols.values.first(where: { $0.names.title == "Entity" })!

  let subclassesIdentifiers = symbolGraph.relationships
    .filter({ $0.kind == .inheritsFrom })
    .filter({ $0.target == entity.identifier.precise })
    .map(\.source)

  let subclasses = subclassesIdentifiers.compactMap { identifier in
    symbolGraph.symbols.values
      .filter({ $0.kind.identifier == .class })
      .first(where: { $0.identifier.precise == identifier })
  }

  return subclasses + [entity]
}

func extractEntities(from symbolGraphs: [SymbolGraph]) -> [SymbolGraph.Symbol] {
  var entities: Set<SymbolGraph.Symbol> = []

  for symbolGraph in symbolGraphs {
    let entity = symbolGraph.symbols.values.first(where: { $0.names.title == "Entity" })!

    let subclassesIdentifiers = symbolGraph.relationships
      .filter({ $0.kind == .inheritsFrom })
      .filter({ $0.target == entity.identifier.precise })
      .map(\.source)

    let subclasses = subclassesIdentifiers.compactMap { identifier in
      symbolGraph.symbols.values
        .filter({ $0.kind.identifier == .class })
        .first(where: { $0.identifier.precise == identifier })
    }

    // return subclasses + [entity]
    entities.formUnion(subclasses)
  }

  return Array(entities)
}

// MARK: Components

func extractComponents(from symbolGraph: SymbolGraph) -> [SymbolGraph.Symbol] {
  let componentIdentifier = symbolGraph.symbols.values
    .first(where: { $0.names.title == "Component" })?
    .identifier.precise

  let conformingIdentifiers = symbolGraph.relationships
    .filter({ $0.kind == .conformsTo })
    .filter({ $0.target == componentIdentifier })
    .map(\.source)

  let components =
    conformingIdentifiers.compactMap { identifier in
      symbolGraph.symbols.values
        .filter({ $0.kind.identifier == .struct })
        .filter({ !$0.names.title.contains(".") })
        .first(where: { $0.identifier.precise == identifier })
    }

  return components
}

// MARK: Properties

private struct _Properties: Codable, Hashable {
  let name: String
  let propertiesIdentifiers: [String]
  let properties: [String]
  
  func hash(into hasher: inout Hasher) {
    hasher.combine(name)
    hasher.combine(properties)
  }
  
  static func == (lhs: _Properties, rhs: _Properties) -> Bool {
    lhs.name == rhs.name
  }
}

private func extractProperties(
  from symbols: [SymbolGraph.Symbol],
  in symbolGraph: SymbolGraph
) -> [_Properties] {

  var properties: [_Properties] = []

  for symbol in symbols {
    let subHeadings = symbolGraph.symbols.values
      .filter({ $0.pathComponents.count == 2 })
      .filter({ $0.pathComponents.contains(symbol.names.title) })
      .filter({ $0.kind.identifier == .property })
      .compactMap(\.names.subHeading)

    let identifiers =
      subHeadings
      .map({ $0.filter({ $0.kind == .identifier }) })
      .flatMap({ $0.map(\.spelling) })
      .sorted()

    let complete =
      subHeadings
      .map({ $0.map(\.spelling).reduce("", +) })
      .sorted()

    properties.append(
      .init(
        name: symbol.names.title,
        propertiesIdentifiers: identifiers,
        properties: complete
      )
    )
  }

  return properties
}

// MARK: - Create files

func createEntitiesFile(from symbolGraph: SymbolGraph, at path: String) {
  let symbols = extractEntitiesSymbols(from: symbolGraph)
  let properties = extractProperties(from: symbols, in: symbolGraph)

  var _entities: [_Properties] = []

  for p in properties {
    _entities.append(p)
  }

  let encoded = try! JSONEncoder().encode(_entities.sorted(by: { $0.name < $1.name }))
  FileManager.default.createFile(atPath: path, contents: encoded)
}

func createComponentsFile(from symbolGraph: SymbolGraph, at path: String) {
  let symbols = extractComponents(from: symbolGraph)
  let properties = extractProperties(from: symbols, in: symbolGraph)

  var _components: [_Properties] = []

  for p in properties {
    _components.append(p)
  }

  let encoded = try! JSONEncoder().encode(_components.sorted(by: { $0.name < $1.name }))
  FileManager.default.createFile(atPath: path, contents: encoded)
}

func createEntitiesFile(from symbolGraphs: [SymbolGraph], at path: String) {
  var _entities: Set<_Properties> = []

  for symbolGraph in symbolGraphs {
    let symbols = extractEntitiesSymbols(from: symbolGraph)
    let properties = extractProperties(from: symbols, in: symbolGraph)

    for p in properties {
      _entities.insert(p)
    }
  }

  let encoder = JSONEncoder()
  encoder.outputFormatting.insert(.sortedKeys)
  // encoder.outputFormatting.insert(.prettyPrinted)

  let encoded = try! encoder.encode(_entities.sorted(by: { $0.name < $1.name }))
  FileManager.default.createFile(atPath: path, contents: encoded)
}

func createComponentsFile(from symbolGraphs: [SymbolGraph], at path: String) {
  var _components: Set<_Properties> = []

  for symbolGraph in symbolGraphs {
    let symbols = extractComponents(from: symbolGraph)
    let properties = extractProperties(from: symbols, in: symbolGraph)

    for p in properties {
      _components.insert(p)
    }
  }

  let encoder = JSONEncoder()
  encoder.outputFormatting.insert(.sortedKeys)
  // encoder.outputFormatting.insert(.prettyPrinted)

  let encoded = try! encoder.encode(_components.sorted(by: { $0.name < $1.name }))
  FileManager.default.createFile(atPath: path, contents: encoded)
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
