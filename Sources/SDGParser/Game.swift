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

    public let locations: Locations

    public let bundleData: BundleData

    init(accessor: XML.Accessor) {
        player = Player(accessor: accessor["SaveGame","player"])
        locations = Locations(accessor: accessor["SaveGame","locations"])
        bundleData = BundleData(accessor: accessor["SaveGame", "bundleData"])
        super.init(accessor: accessor, offsetKeys: ["SaveGame"])
    }


    public var gameVersion: String {
        text(for: "gameVersion", defaultValue: "<unknown>")
    }

    public var is156OrGreater: Bool {
        guard let version = SemanticVersionNumber(version: gameVersion) else {
            return false
        }
        return version >= SemanticVersionNumber(major: 1, minor: 5, patch: 6)
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

    public var lostBooksFound: Int {
        get {
            int(for: "lostBooksFound", defaultValue: 0)

        }
        set {
            set(newValue, for: "lostBooksFound")
        }
    }

    public var goldenWalnuts: Int {
        get {
            int(for: "goldenWalnuts", defaultValue: 0)

        }
        set {
            set(newValue, for: "goldenWalnuts")
        }
    }
    var goldenWalnutsFound: Int {
        get {
            int(for: "goldenWalnutsFound", defaultValue: 0)

        }
        set {
            set(newValue, for: "goldenWalnutsFound")
        }
    }

    public var miniShippingBinsObtained: Int {
        get {
            int(for: "miniShippingBinsObtained", defaultValue: 0)

        }
        set {
            set(newValue, for: "miniShippingBinsObtained")
        }
    }
    public var mineShrineActivated: Bool {
        get {
            bool(for: "mineShrineActivated", defaultValue: false)

        }
        set {
            set(newValue, for: "mineShrineActivated")
        }
    }
    public var goldenCoconutCracked: Bool {
        get {
            bool(for: "goldenCoconutCracked", defaultValue: false)

        }
        set {
            set(newValue, for: "goldenCoconutCracked")
        }
    }
    public var parrotPlatformsUnlocked: Bool {
        get {
            bool(for: "parrotPlatformsUnlocked", defaultValue: false)

        }
        set {
            set(newValue, for: "parrotPlatformsUnlocked")
        }
    }
    public var farmPerfect: Bool {
        get {
            bool(for: "farmPerfect", defaultValue: false)

        }
        set {
            set(newValue, for: "farmPerfect")
        }
    }

    public var visitsUntilY1Guarantee: Int {
        get {
            int(for: "visitsUntilY1Guarantee", defaultValue: -1)

        }
        set {
            set(newValue, for: "visitsUntilY1Guarantee")
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

    public func location(for type: GameLocation.LocationType) -> GameLocation? {
        locations.items.first(where: { $0.type == type })
    }

    public var communityCenter: CommunityCenter? {
        location(for: .communityCenter) as? CommunityCenter
    }
}


/*

 <activeDialogueEvents>
    <item>
        <key>
            <string>cc_Greenhouse</string>
        </key>
        <value>
            <int>3</int>
        </value>
    </item>
 </activeDialogueEvents>
 */
