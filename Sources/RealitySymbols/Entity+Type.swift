import Foundation

#if os(visionOS)
public enum EntityType: CaseIterable, Codable {
    case anchorEntity
    case entity
    case modelEntity
    case perspectiveCamera
    case triggerVolume
}
#endif
