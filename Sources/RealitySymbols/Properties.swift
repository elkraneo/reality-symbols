import Foundation
import SymbolKit

struct _Properties: Codable, Hashable {
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

func extractProperties(
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
