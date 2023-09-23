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

extension EntityType: CustomStringConvertible {
  public var description: String {
    switch self {
    case .entity:
      return "Entity"
    case .modelEntity:
      return "ModelEntity"
    case .perspectiveCamera:
      return "PerspectiveCamera"
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

extension EntityType: CustomStringConvertible {
  public var description: String {
    switch self {
    case .entity:
      return "Entity"
    case .modelEntity:
      return "ModelEntity"
    case .perspectiveCamera:
      return "PerspectiveCamera"
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

extension EntityType: CustomStringConvertible {
  public var description: String {
    switch self {
    case .anchorEntity:
      return "AnchorEntity"
    case .entity:
      return "Entity"
    case .modelEntity:
      return "ModelEntity"
    case .perspectiveCamera:
      return "PerspectiveCamera"
    case .triggerVolume:
      return "TriggerVolume"
    }
  }
}

#endif
