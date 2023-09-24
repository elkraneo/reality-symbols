import Foundation
import SymbolKit

// MARK: - Decoding

func iOSSymbolGraph() -> SymbolGraph {
  let url = Bundle.module.url(
    forResource: "RealityFoundation.symbols",
    withExtension: "json",
    subdirectory: "Resources/iOS/Symbols"
  )!
  let data = try! Data(contentsOf: url)
  let symbolGraph = try! JSONDecoder().decode(SymbolGraph.self, from: data)
  return symbolGraph
}

func macOSSymbolGraph() -> SymbolGraph {
  let url = Bundle.module.url(
    forResource: "RealityFoundation.symbols",
    withExtension: "json",
    subdirectory: "Resources/macOS/Symbols"
  )!
  let data = try! Data(contentsOf: url)
  let symbolGraph = try! JSONDecoder().decode(SymbolGraph.self, from: data)
  return symbolGraph
}

func xrOSSymbolGraph() -> SymbolGraph {
  let url = Bundle.module.url(
    forResource: "RealityFoundation.symbols",
    withExtension: "json",
    subdirectory: "Resources/xrOS/Symbols"
  )!
  let data = try! Data(contentsOf: url)
  let symbolGraph = try! JSONDecoder().decode(SymbolGraph.self, from: data)
  return symbolGraph
}

//TODO: explore `UnifiedSymbolGraph`
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

// MARK: - Extract

// MARK: Entities

private func extractEntities(from symbolGraph: SymbolGraph) -> [SymbolGraph.Symbol] {
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

private func extractProperties(
  from symbols: [SymbolGraph.Symbol],
  in symbolGraph: SymbolGraph
) -> [(String, [String])] {
  let properties = symbols.map({ symbol in
    symbolGraph.symbols.values
      .filter({ $0.pathComponents.count == 2 })
      .filter({ $0.pathComponents.contains(symbol.names.title) })
      .filter({ $0.kind.identifier == .property })
      .compactMap(\.names.subHeading)
      .map({ $0.map(\.spelling).reduce("", +) })
      .sorted()
  })

  var entityWithProperties: [(String, [String])] = []
  
  for value in zip(symbols, properties) {
    entityWithProperties.append((value.0.names.title, value.1))
  }
  
  return entityWithProperties
}

// MARK: - Create files

func createEntitiesFile(from symbolGraph: SymbolGraph, at path: String) {
  let symbols = extractEntities(from: symbolGraph)
  let entityWithProperties = extractProperties(from: symbols, in: symbolGraph)

  struct _Entity: Codable {
    let name: String
    let properties: [String]
  }

  var _entities: [_Entity] = []

  for value in entityWithProperties {
    _entities.append(_Entity(name: value.0, properties: value.1))
  }

  let encoded = try! JSONEncoder().encode(_entities.sorted(by: { $0.name < $1.name }))
  FileManager.default.createFile(atPath: path, contents: encoded)
}

func createComponentsFile(from symbolGraph: SymbolGraph, at path: String) {
  let symbols = extractComponents(from: symbolGraph)
  let componentWithProperties = extractProperties(from: symbols, in: symbolGraph)

  struct _Component: Codable {
    let name: String
    let properties: [String]
  }

  var _components: [_Component] = []

  for value in componentWithProperties {
    _components.append(_Component(name: value.0, properties: value.1))
  }
  
  let encoded = try! JSONEncoder().encode(_components.sorted(by: { $0.name < $1.name }))
  FileManager.default.createFile(atPath: path, contents: encoded)
}
