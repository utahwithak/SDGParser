//
// COPYRIGHT 2023 Free Bits
// Created by Carl Wieland on 1/30/23
// 

import Foundation

public enum ItemType: String, Identifiable, Hashable, Equatable, CaseIterable {
    public var id: String {
        rawValue
    }

    case none = ""
    case basic = "Basic"
    case mineral = "Minerals"
    case artifact = "Arch"
    case seeds = "Seeds"
    case crafting = "Crafting"

    public var description: String {
        switch self {
        case .none:
            return "Leave Blank -- use this if unsure"
        case .artifact:
            return "Artifact"
        default:
            return rawValue
        }
    }

    public static var sortedValues: [ItemType] {
        allCases.sorted(by: \.rawValue)
    }
}
