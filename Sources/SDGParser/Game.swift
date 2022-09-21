//
//  File.swift
//  File
//
//  Created by Carl Wieland on 8/27/21.
//

import Foundation
import SwiftyXMLParser

public class Game: XMLObject {

    public let player: Player
    
    init(accessor: XML.Accessor) {
        
        player = Player(accessor: accessor["SaveGame","player"])

        super.init(accessor: accessor, offsetKeys: ["SaveGame"])
    }


    public var gameVersion: String {
        text(for: "gameVersion", defaultValue: "<unknown>")
    }

    public var chanceToRainTomorrow: Double {
        get {
            double(for: "chanceToRainTomorrow", defaultValue: 0.183)
        }
        set {
            set(newValue, for: "chanceToRainTomorrow")
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

    public var farmType: FarmType {
        get {
            let intVal = accessor["SaveGame","whichFarm"].int ?? 0
            return FarmType(rawValue: intVal) ?? .standard

        }
        set {
            switch accessor["SaveGame","whichFarm"] {
            case .singleElement(let element):
                element.text = "\(newValue.rawValue)"
            default:
                return
            }
        }
    }

    public var currentYear: Int {
        get {
            int(for: "year", defaultValue: 1)

        }
        set {
            set(newValue, for: "year") {
                max(1, $0)
            }
        }
    }

    public var dayOfMonth: Int {
        get {
            int(for: "dayOfMonth", defaultValue: 1)
        }
        set {
            set(newValue, for: "dayOfMonth") {
                max(min(28, $0), 1)
            }
        }
    }

    public var samBandName: String {
        get {
            text(for: "samBandName")
        }
        set {
            set(newValue, for: "samBandName")
        }
    }

    public var elliottBookName: String {
        get {
            text(for: "elliottBookName")
        }
        set {
            set(newValue, for: "elliottBookName")
        }
    }

    public var dailyLuck: Double {
        get {
            double(for: "dailyLuck")
        }
        set {
            set(newValue, for: "dailyLuck")
        }
    }

    public var isRaining: Bool {
        get {
            bool(for: "isRaining")
        }
        set {
            set(newValue, for: "isRaining")
        }
    }

    public var shippingTax: Bool {
        get {
            bool(for: "shippingTax")
        }
        set {
            set(newValue, for: "shippingTax")
        }
    }

    public var bloomDay: Bool {
        get {
            bool(for: "bloomDay")
        }
        set {
            set(newValue, for: "bloomDay")
        }
    }
    public var isLightning: Bool {
        get {
            bool(for: "isLightning")
        }
        set {
            set(newValue, for: "isLightning")
        }
    }
    public var isSnowing: Bool {
        get {
            bool(for: "isSnowing")
        }
        set {
            set(newValue, for: "isSnowing")
        }
    }

    public var shouldSpawnMonsters: Bool {
        get {
            bool(for: "shouldSpawnMonsters")
        }
        set {
            set(newValue, for: "shouldSpawnMonsters")
        }
    }

    public func makeDocument() throws -> String {
        try XML.Converter(accessor).makeDocument()
    }
}

