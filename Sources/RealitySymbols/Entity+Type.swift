import Foundation
import RealityKit

#if os(iOS)

public enum EntityType: CaseIterable, Codable {
    case entity
    case modelEntity
    case perspectiveCamera
}

extension EntityType {
  public var type: RealityKit.Entity.Type {
    switch self {
    case .entity:
      return Entity.self
    case .modelEntity:
      return ModelEntity.self
    case .perspectiveCamera:
      return PerspectiveCamera.self
    }
  }
}

#elseif os(macOS)

public enum EntityType: CaseIterable, Codable {
    case entity
    case modelEntity
    case perspectiveCamera
}

extension EntityType {
  public var type: RealityKit.Entity.Type {
    switch self {
    case .entity:
      return Entity.self
    case .modelEntity:
      return ModelEntity.self
    case .perspectiveCamera:
      return PerspectiveCamera.self
    }
  }
}

#elseif os(visionOS)

public enum EntityType: CaseIterable, Codable {
    case anchorEntity
    case entity
    case modelEntity
    case perspectiveCamera
    case triggerVolume
}

extension EntityType {
  public var type: RealityKit.Entity.Type {
    switch self {
    case .anchorEntity:
      return AnchorEntity.self
    case .entity:
      return Entity.self
    case .modelEntity:
      return ModelEntity.self
    case .perspectiveCamera:
      return PerspectiveCamera.self
    case .triggerVolume:
      return TriggerVolume.self
    }
  }
}

#endif
