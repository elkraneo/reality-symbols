// This file was automatically generated and should not be edited.

import Foundation
import RealityKit

//MARK: - iOS

extension RealityPlatform.iOS {
  public enum ComponentType: CaseIterable {
    case accessibilityComponent
    case anchoringComponent
    case bodyTrackingComponent
    case characterControllerComponent
    case characterControllerStateComponent
    case collisionComponent
    case directionalLightComponent
    case modelComponent
    case modelDebugOptionsComponent
    case perspectiveCameraComponent
    case physicsBodyComponent
    case physicsMotionComponent
    case pointLightComponent
    case sceneUnderstandingComponent
    case spotLightComponent
    case synchronizationComponent
    case transform
  }
}

extension RealityPlatform.iOS.ComponentType: CustomStringConvertible {
  public var description: String {
    switch self {
    case .accessibilityComponent:
      return "AccessibilityComponent"
    case .anchoringComponent:
      return "AnchoringComponent"
    case .bodyTrackingComponent:
      return "BodyTrackingComponent"
    case .characterControllerComponent:
      return "CharacterControllerComponent"
    case .characterControllerStateComponent:
      return "CharacterControllerStateComponent"
    case .collisionComponent:
      return "CollisionComponent"
    case .directionalLightComponent:
      return "DirectionalLightComponent"
    case .modelComponent:
      return "ModelComponent"
    case .modelDebugOptionsComponent:
      return "ModelDebugOptionsComponent"
    case .perspectiveCameraComponent:
      return "PerspectiveCameraComponent"
    case .physicsBodyComponent:
      return "PhysicsBodyComponent"
    case .physicsMotionComponent:
      return "PhysicsMotionComponent"
    case .pointLightComponent:
      return "PointLightComponent"
    case .sceneUnderstandingComponent:
      return "SceneUnderstandingComponent"
    case .spotLightComponent:
      return "SpotLightComponent"
    case .synchronizationComponent:
      return "SynchronizationComponent"
    case .transform:
      return "Transform"
    }
  }
}

#if os(iOS)
extension RealityPlatform.iOS.ComponentType {
  public var rawType: RealityKit.Component.Type {
    switch self {
    case .accessibilityComponent:
      return AccessibilityComponent.self
    case .anchoringComponent:
      return AnchoringComponent.self
    case .bodyTrackingComponent:
      return BodyTrackingComponent.self
    case .characterControllerComponent:
      return CharacterControllerComponent.self
    case .characterControllerStateComponent:
      return CharacterControllerStateComponent.self
    case .collisionComponent:
      return CollisionComponent.self
    case .directionalLightComponent:
      return DirectionalLightComponent.self
    case .modelComponent:
      return ModelComponent.self
    case .modelDebugOptionsComponent:
      return ModelDebugOptionsComponent.self
    case .perspectiveCameraComponent:
      return PerspectiveCameraComponent.self
    case .physicsBodyComponent:
      return PhysicsBodyComponent.self
    case .physicsMotionComponent:
      return PhysicsMotionComponent.self
    case .pointLightComponent:
      return PointLightComponent.self
    case .sceneUnderstandingComponent:
      return SceneUnderstandingComponent.self
    case .spotLightComponent:
      return SpotLightComponent.self
    case .synchronizationComponent:
      return SynchronizationComponent.self
    case .transform:
      return Transform.self
    }
  }
}
#endif

//MARK: - macOS

extension RealityPlatform.macOS {
  public enum ComponentType: CaseIterable {
    case accessibilityComponent
    case anchoringComponent
    case characterControllerComponent
    case characterControllerStateComponent
    case collisionComponent
    case directionalLightComponent
    case modelComponent
    case modelDebugOptionsComponent
    case perspectiveCameraComponent
    case physicsBodyComponent
    case physicsMotionComponent
    case pointLightComponent
    case spotLightComponent
    case synchronizationComponent
    case transform
  }
}

extension RealityPlatform.macOS.ComponentType: CustomStringConvertible {
  public var description: String {
    switch self {
    case .accessibilityComponent:
      return "AccessibilityComponent"
    case .anchoringComponent:
      return "AnchoringComponent"
    case .characterControllerComponent:
      return "CharacterControllerComponent"
    case .characterControllerStateComponent:
      return "CharacterControllerStateComponent"
    case .collisionComponent:
      return "CollisionComponent"
    case .directionalLightComponent:
      return "DirectionalLightComponent"
    case .modelComponent:
      return "ModelComponent"
    case .modelDebugOptionsComponent:
      return "ModelDebugOptionsComponent"
    case .perspectiveCameraComponent:
      return "PerspectiveCameraComponent"
    case .physicsBodyComponent:
      return "PhysicsBodyComponent"
    case .physicsMotionComponent:
      return "PhysicsMotionComponent"
    case .pointLightComponent:
      return "PointLightComponent"
    case .spotLightComponent:
      return "SpotLightComponent"
    case .synchronizationComponent:
      return "SynchronizationComponent"
    case .transform:
      return "Transform"
    }
  }
}

#if os(macOS)
extension RealityPlatform.macOS.ComponentType {
  public var rawType: RealityKit.Component.Type {
    switch self {
    case .accessibilityComponent:
      if #available(macOS 14.0, *) {
        return AccessibilityComponent.self
      } else {
        // FIXME:
        return AnchoringComponent.self
      }
    case .anchoringComponent:
      return AnchoringComponent.self
    case .characterControllerComponent:
      return CharacterControllerComponent.self
    case .characterControllerStateComponent:
      return CharacterControllerStateComponent.self
    case .collisionComponent:
      return CollisionComponent.self
    case .directionalLightComponent:
      return DirectionalLightComponent.self
    case .modelComponent:
      return ModelComponent.self
    case .modelDebugOptionsComponent:
      return ModelDebugOptionsComponent.self
    case .perspectiveCameraComponent:
      return PerspectiveCameraComponent.self
    case .physicsBodyComponent:
      return PhysicsBodyComponent.self
    case .physicsMotionComponent:
      return PhysicsMotionComponent.self
    case .pointLightComponent:
      return PointLightComponent.self
    case .spotLightComponent:
      return SpotLightComponent.self
    case .synchronizationComponent:
      return SynchronizationComponent.self
    case .transform:
      return Transform.self
    }
  }
}
#endif

//MARK: - visionOS

extension RealityPlatform.visionOS {
  public enum ComponentType: CaseIterable {
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
}

extension RealityPlatform.visionOS.ComponentType: CustomStringConvertible {
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

#if os(visionOS)
extension RealityPlatform.visionOS.ComponentType {
  public var rawType: RealityKit.Component.Type {
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
#endif
