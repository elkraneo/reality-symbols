import Foundation

extension EntityType {
  public var systemImage: String {
    switch self {
      case .anchorEntity:
        return "arrow.down.to.line"
      case .bodyTrackedEntity:
        return "figure.walk"
      case .directionalLight:
        return "sun.max"
      case .entity:
        return "move.3d"
      case .modelEntity:
        return "cube"
      case .perspectiveCamera:
        return "camera"
      case .pointLight:
        return "lightbulb.led"
      case .spotLight:
        return "lamp.desk"
      case .triggerVolume:
        return "cube.transparent"
    }
  }
}
