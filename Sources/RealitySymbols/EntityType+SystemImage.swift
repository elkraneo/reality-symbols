import Foundation

#if os(iOS)

extension EntityType {
  public var systemImage: String {
    switch self {
    case .entity:
      return "move.3d"
    case .modelEntity:
      return "cube"
    case .perspectiveCamera:
      return "camera"
    }
  }
}

#elseif os(macOS)

extension EntityType {
  public var systemImage: String {
    switch self {
    case .entity:
      return "move.3d"
    case .modelEntity:
      return "cube"
    case .perspectiveCamera:
      return "camera"
    }
  }
}

#elseif os(visionOS)

extension EntityType {
  public var systemImage: String {
    switch self {
    case .anchorEntity:
      return "arrow.down.to.line"
    case .entity:
      return "move.3d"
    case .modelEntity:
      return "cube"
    case .perspectiveCamera:
      return "camera"
    case .triggerVolume:
      return "cube.transparent"
    }
  }
}

#endif
//extension CodableEntity.EntityType {
//  public var symbol: String {
//    switch self {
//      case .anchor:
//        return "arrow.down.to.line"
//      case .bodyTrackedEntity:
//        return "figure.walk"
//      case .directionalLight:
//        return "sun.max"
//      case .entity:
//        return "move.3d"
//      case .model:
//        return "cube"
//      case .perspectiveCamera:
//        return "camera"
//      case .pointLight:
//        return "lightbulb.led"
//      case .spotLight:
//        return "lamp.desk"
//      case .triggerVolume:
//        return "cube.transparent"
//    }
//  }
//}
