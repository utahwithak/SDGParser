//
//  File.swift
//  
//
//  Created by Carl Wieland on 9/8/22.
//

import Foundation

public enum FarmType: Int, Identifiable, CaseIterable {
    case standard
    case river
    case forest
    case hilltop
    case wilderness
    case fourCorners
    case beach

    public var id: Int {
        return rawValue
    }

    public var displayName: String {
        switch self {
        case .standard:
            return "Standard Farm"
        case .river:
            return "Riverland Farm"
        case .forest:
            return "Forest Farm"
        case .hilltop:
            return "Hilltop Farm"
        case .wilderness:
            return "Wilderness Farm"
        case .fourCorners:
            return "Four Corners Farm"
        case .beach:
            return "Beach Farm"
        }
    }
}
