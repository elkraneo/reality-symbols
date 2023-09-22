import Foundation

#if os(visionOS)
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
#endif
