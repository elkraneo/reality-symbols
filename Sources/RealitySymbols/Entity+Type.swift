import Foundation
import RealityKit

#if os(iOS)

public enum EntityType: CaseIterable, Codable {
  case anchorEntity
  case bodyTrackedEntity
  case directionalLight
  case entity
  case modelEntity
  case perspectiveCamera
  case pointLight
  case spotLight
  case triggerVolume
}

extension EntityType {
  public var type: RealityKit.Entity.Type {
    switch self {
    case .anchorEntity:
      return AnchorEntity.self
    case .bodyTrackedEntity:
      return BodyTrackedEntity.self
    case .directionalLight:
      return DirectionalLight.self
    case .entity:
      return Entity.self
    case .modelEntity:
      return ModelEntity.self
    case .perspectiveCamera:
      return PerspectiveCamera.self
    case .pointLight:
      return PointLight.self
    case .spotLight:
      return SpotLight.self
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
    case .bodyTrackedEntity:
      return "BodyTrackedEntity"
    case .directionalLight:
      return "DirectionalLight"
    case .entity:
      return "Entity"
    case .modelEntity:
      return "ModelEntity"
    case .perspectiveCamera:
      return "PerspectiveCamera"
    case .pointLight:
      return "PointLight"
    case .spotLight:
      return "SpotLight"
    case .triggerVolume:
      return "TriggerVolume"
    }
  }
}

#elseif os(macOS)

public enum EntityType: CaseIterable, Codable {
  case anchorEntity
  case directionalLight
  case entity
  case modelEntity
  case perspectiveCamera
  case pointLight
  case spotLight
  case triggerVolume
}

extension EntityType {
  public var type: RealityKit.Entity.Type {
    switch self {
    case .anchorEntity:
      return AnchorEntity.self
    case .directionalLight:
      return DirectionalLight.self
    case .entity:
      return Entity.self
    case .modelEntity:
      return ModelEntity.self
    case .perspectiveCamera:
      return PerspectiveCamera.self
    case .pointLight:
      return PointLight.self
    case .spotLight:
      return SpotLight.self
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
    case .directionalLight:
      return "DirectionalLight"
    case .entity:
      return "Entity"
    case .modelEntity:
      return "ModelEntity"
    case .perspectiveCamera:
      return "PerspectiveCamera"
    case .pointLight:
      return "PointLight"
    case .spotLight:
      return "SpotLight"
    case .triggerVolume:
      return "TriggerVolume"
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
