//
//  File.swift
//  File
//
//  Created by Carl Wieland on 8/27/21.
//

import Foundation
import SwiftyXMLParser

public class Game {
    
    internal let accessor: XML.Accessor
    
    public let player: Player
    
    internal init(accessor: XML.Accessor) {
        self.accessor = accessor
        player = Player(root: accessor["SaveGame","player"])
    }


    public var gameVersion: String {
        accessor["SaveGame","gameVersion"].text ?? "<unknown>"
    }

    public var chanceToRainTomorrow: Double {
        get {
            accessor["SaveGame","chanceToRainTomorrow"].double ?? 0
        }
        set {
            switch accessor["SaveGame","chanceToRainTomorrow"] {
            case .singleElement(let element):
                element.text = "\(newValue)"
            default:
                return
            }
        }
    }

    public var currentSeason: Season {
        get {
            let text = accessor["SaveGame","currentSeason"].text ?? ""
            return Season(rawValue: text) ?? .spring

        }
        set {
            switch accessor["SaveGame","currentSeason"] {
            case .singleElement(let element):
                element.text = newValue.rawValue
            default:
                return
            }
        }
    }

    public var currentYear: Int {
        get {
            accessor["SaveGame","year"].int ?? 1
        }
        set {
            switch accessor["SaveGame","year"] {
            case .singleElement(let element):
                element.text = "\(max(newValue, 1))"
            default:
                return
            }
        }
    }

    public var dayOfMonth: Int {
        get {
            accessor["SaveGame","dayOfMonth"].int ?? 1
        }
        set {
            switch accessor["SaveGame","dayOfMonth"] {
            case .singleElement(let element):
                let dayValue = max(min(28, newValue), 1)
                element.text = "\(dayValue)"
            default:
                return
            }
        }
    }

    public func makeDocument() throws -> String {
        try XML.Converter(accessor).makeDocument()
    }
}
