import Foundation
import RealityKit

#if os(iOS)

public enum ComponentType: CaseIterable, Codable {
    case transform
}

extension ComponentType {
  public var type: RealityKit.Component.Type {
    switch self {
    case .transform:
      return Transform.self
    }
  }
}

extension ComponentType: CustomStringConvertible {
  public var description: String {
    switch self {
    case .transform:
      return "Transform"
    }
  }
}

#elseif os(macOS)

public enum ComponentType: CaseIterable, Codable {
    case transform
}

extension ComponentType {
  public var type: RealityKit.Component.Type {
    switch self {
    case .transform:
      return Transform.self
    }
  }
}

extension ComponentType: CustomStringConvertible {
  public var description: String {
    switch self {
    case .transform:
      return "Transform"
    }
  }
}

#elseif os(visionOS)

public enum ComponentType: CaseIterable, Codable {
    case accessibilityComponent
    case adaptiveResolutionComponent
    case ambientAudioComponent
    case anchoringComponent
    case audioMixGroupsComponent
    case channelAudioComponent
    case characterControllerComponent
    case characterControllerStateComponent
    case collisionComponent
    case groundingShadowComponent
    case hoverEffectComponent
    case imageBasedLightComponent
    case imageBasedLightReceiverComponent
    case inputTargetComponent
    case modelComponent
    case modelDebugOptionsComponent
    case modelSortGroupComponent
    case opacityComponent
    case particleEmitterComponent
    case perspectiveCameraComponent
    case physicsBodyComponent
    case physicsMotionComponent
    case physicsSimulationComponent
    case portalComponent
    case sceneUnderstandingComponent
    case spatialAudioComponent
    case synchronizationComponent
    case textComponent
    case transform
    case videoPlayerComponent
    case worldComponent
}

extension ComponentType {
  public var type: RealityKit.Component.Type {
    switch self {
    case .accessibilityComponent:
      return AccessibilityComponent.self
    case .adaptiveResolutionComponent:
      return AdaptiveResolutionComponent.self
    case .ambientAudioComponent:
      return AmbientAudioComponent.self
    case .anchoringComponent:
      return AnchoringComponent.self
    case .audioMixGroupsComponent:
      return AudioMixGroupsComponent.self
    case .channelAudioComponent:
      return ChannelAudioComponent.self
    case .characterControllerComponent:
      return CharacterControllerComponent.self
    case .characterControllerStateComponent:
      return CharacterControllerStateComponent.self
    case .collisionComponent:
      return CollisionComponent.self
    case .groundingShadowComponent:
      return GroundingShadowComponent.self
    case .hoverEffectComponent:
      return HoverEffectComponent.self
    case .imageBasedLightComponent:
      return ImageBasedLightComponent.self
    case .imageBasedLightReceiverComponent:
      return ImageBasedLightReceiverComponent.self
    case .inputTargetComponent:
      return InputTargetComponent.self
    case .modelComponent:
      return ModelComponent.self
    case .modelDebugOptionsComponent:
      return ModelDebugOptionsComponent.self
    case .modelSortGroupComponent:
      return ModelSortGroupComponent.self
    case .opacityComponent:
      return OpacityComponent.self
    case .particleEmitterComponent:
      return ParticleEmitterComponent.self
    case .perspectiveCameraComponent:
      return PerspectiveCameraComponent.self
    case .physicsBodyComponent:
      return PhysicsBodyComponent.self
    case .physicsMotionComponent:
      return PhysicsMotionComponent.self
    case .physicsSimulationComponent:
      return PhysicsSimulationComponent.self
    case .portalComponent:
      return PortalComponent.self
    case .sceneUnderstandingComponent:
      return SceneUnderstandingComponent.self
    case .spatialAudioComponent:
      return SpatialAudioComponent.self
    case .synchronizationComponent:
      return SynchronizationComponent.self
    case .textComponent:
      return TextComponent.self
    case .transform:
      return Transform.self
    case .videoPlayerComponent:
      return VideoPlayerComponent.self
    case .worldComponent:
      return WorldComponent.self
    }
  }
}

extension ComponentType: CustomStringConvertible {
  public var description: String {
    switch self {
    case .accessibilityComponent:
      return "AccessibilityComponent"
    case .adaptiveResolutionComponent:
      return "AdaptiveResolutionComponent"
    case .ambientAudioComponent:
      return "AmbientAudioComponent"
    case .anchoringComponent:
      return "AnchoringComponent"
    case .audioMixGroupsComponent:
      return "AudioMixGroupsComponent"
    case .channelAudioComponent:
      return "ChannelAudioComponent"
    case .characterControllerComponent:
      return "CharacterControllerComponent"
    case .characterControllerStateComponent:
      return "CharacterControllerStateComponent"
    case .collisionComponent:
      return "CollisionComponent"
    case .groundingShadowComponent:
      return "GroundingShadowComponent"
    case .hoverEffectComponent:
      return "HoverEffectComponent"
    case .imageBasedLightComponent:
      return "ImageBasedLightComponent"
    case .imageBasedLightReceiverComponent:
      return "ImageBasedLightReceiverComponent"
    case .inputTargetComponent:
      return "InputTargetComponent"
    case .modelComponent:
      return "ModelComponent"
    case .modelDebugOptionsComponent:
      return "ModelDebugOptionsComponent"
    case .modelSortGroupComponent:
      return "ModelSortGroupComponent"
    case .opacityComponent:
      return "OpacityComponent"
    case .particleEmitterComponent:
      return "ParticleEmitterComponent"
    case .perspectiveCameraComponent:
      return "PerspectiveCameraComponent"
    case .physicsBodyComponent:
      return "PhysicsBodyComponent"
    case .physicsMotionComponent:
      return "PhysicsMotionComponent"
    case .physicsSimulationComponent:
      return "PhysicsSimulationComponent"
    case .portalComponent:
      return "PortalComponent"
    case .sceneUnderstandingComponent:
      return "SceneUnderstandingComponent"
    case .spatialAudioComponent:
      return "SpatialAudioComponent"
    case .synchronizationComponent:
      return "SynchronizationComponent"
    case .textComponent:
      return "TextComponent"
    case .transform:
      return "Transform"
    case .videoPlayerComponent:
      return "VideoPlayerComponent"
    case .worldComponent:
      return "WorldComponent"
    }
  }
}

#endif
