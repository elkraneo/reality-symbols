// This file was automatically generated and should not be edited.

import Foundation
import RealityKit

extension RealityPlatform.iOS {
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
}

extension RealityPlatform.iOS.EntityType: CustomStringConvertible {
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

#if os(iOS)

extension RealityPlatform.iOS.EntityType {
  public var rawType: RealityKit.Entity.Type {
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

#endif

extension RealityPlatform.macOS {
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
}

extension RealityPlatform.macOS.EntityType: CustomStringConvertible {
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

#if os(macOS)

extension RealityPlatform.macOS.EntityType {
  public var rawType: RealityKit.Entity.Type {
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

#endif

extension RealityPlatform.visionOS {
  public enum EntityType: CaseIterable, Codable {
    case anchorEntity
    case entity
    case modelEntity
    case perspectiveCamera
    case triggerVolume
  }
}

extension RealityPlatform.visionOS.EntityType: CustomStringConvertible {
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

#if os(visionOS)

extension RealityPlatform.visionOS.EntityType {
  public var rawType: RealityKit.Entity.Type {
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

