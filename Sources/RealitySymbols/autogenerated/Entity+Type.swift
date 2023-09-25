// This file was automatically generated and should not be edited.

import Foundation
import RealityKit

public enum EntityType: CaseIterable, Codable {
  case anchorEntity
  case bodyTrackedEntity
  case directionalLight
  case entity
  //TODO: deal with same but different -> case entity
  case modelEntity
  case perspectiveCamera
  case pointLight
  case spotLight
  case triggerVolume
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
      // case .entity:
      //   return "Entity"
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

#if os(iOS)

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
        default:
          fatalError()
      }
    }
  }

#elseif os(macOS)

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
        default:
          fatalError()
      }
    }
  }

#elseif os(visionOS)

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
        default:
          fatalError()
      }
    }
  }

#endif
