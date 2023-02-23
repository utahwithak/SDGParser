//
// COPYRIGHT 2023 Free Bits
// Created by Carl Wieland on 1/19/23
// 

import Foundation

public enum Quality: Int, Identifiable, CaseIterable {
    public var id: Int {
        rawValue
    }
    case none = 0
    case silver = 1
    case gold = 2
    case iriduum = 3

    public var description: String {
        switch self {
        case .none:
            return "Default"
        case .silver:
            return "Silver"
        case .gold:
            return "Gold"
        case .iriduum:
            return "Iridium"
        }
    }
}
