//
//  File.swift
//  
//
//  Created by Carl Wieland on 9/7/22.
//

import Foundation
public enum Season: String, Identifiable, CaseIterable {
    case spring
    case summer
    case fall
    case winter

    public var id: String { self.rawValue }

    public var displayName: String {
        switch self {
        case .spring: return "Spring"
        case .summer: return "Summer"
        case .fall: return "Fall"
        case .winter: return "Winter"
        }
    }

}
