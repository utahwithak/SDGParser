//
//  File.swift
//  File
//
//  Created by Carl Wieland on 8/30/21.
//

import Foundation
import SwiftyXMLParser

public class Player: XMLObject {

    public let friendshipData: FriendshipData

    public let experiencePoints: ExperiencePoints

    public let inventory: Inventory

    public let mailForTomorrow: StringArray

    init(accessor: XML.Accessor) {
        friendshipData = FriendshipData(accessor: accessor["friendshipData"])
        experiencePoints = ExperiencePoints(accessor: accessor["experiencePoints"])
        inventory = Inventory(accessor: accessor["items"])
        mailForTomorrow = StringArray(element: accessor["mailForTomorrow"].element ?? XML.Element(name: "mailForTomorrow"))

        super.init(accessor: accessor)
    }

    public var name: String {
        get {
            text(for: "name")
        }
        set {
            set(newValue, for: "name")
        }
    }
    
    public var farmName: String {
        get {
            text(for: "farmName")
        }
        set {
            set(newValue, for: "farmName")
        }
    }

    public var favoriteThing: String {
        get {
            text(for: "favoriteThing")
        }
        set {
            set(newValue, for: "favoriteThing")
        }
    }

    public var money: Int {
        get {
            int(for: "money")
        }
        set {
            set(newValue, for: "money") {
                let max = Int(Int32.max)
                return min($0, max)
            }
        }
    }

    public var catPerson: Bool {
        get { bool(for: "catPerson") }
        set { set(newValue, for: "catPerson") }
    }

    public var whichPetBreed: Int {
        get { int(for: "whichPetBreed") }
        set { set(newValue, for: "whichPetBreed") }
    }

    public var health: Int {
        get { int(for: "health") }
        set { set(newValue, for: "health") }
    }
    public var maxHealth: Int {
        get { int(for: "maxHealth") }
        set { set(newValue, for: "maxHealth") }
    }

    public var isMale: Bool {
        get { bool(for: "isMale") }
        set { set(newValue, for: "isMale") }
    }

    public var speed: Int {
        get { int(for: "Speed") }
        set { set(newValue, for: "Speed") }
    }
    public var stamina: Int {
        get { int(for: "stamina") }
        set {
            set(newValue, for: "stamina") {
                return min(max(270, $0), maxStamina)
            }

        }
    }

    public var qiGems: Int {
        get { int(for: "qiGems") }
        set { set(newValue, for: "qiGems") }
    }

    public var maxStamina: Int {
        get { int(for: "maxStamina") }
        set {
            set(newValue, for: "maxStamina") {
                return min(max(270, $0), 508)
            }

        }
    }

    public var maxItems: Int {
        get { int(for: "maxItems") }
        set {
            set(newValue, for: "maxItems") { proposed in
                let values = [12,24,36]
                var curMin = Int.max
                var curIndex = 0
                for (index, packSize) in values.enumerated() {
                    let delta = abs(packSize - proposed)
                    if  delta < curMin {
                        curMin = delta
                        curIndex = index
                    }
                }

                return values[curIndex]

            }

        }
    }

    public var attack: Int {
        get { int(for: "attack") }
        set { set(newValue, for: "attack") }
    }
    public var immunity: Int {
        get { int(for: "immunity") }
        set { set(newValue, for: "immunity") }
    }

    public var attackIncreaseModifier: Double {
        get { double(for: "attackIncreaseModifier") }
        set { set(newValue, for: "attackIncreaseModifier") }
    }

    public var knockbackModifier: Double {
        get { double(for: "knockbackModifier") }
        set { set(newValue, for: "knockbackModifier") }
    }

    public var weaponSpeedModifier: Double {
        get { double(for: "weaponSpeedModifier") }
        set { set(newValue, for: "weaponSpeedModifier") }
    }

    public var critChanceModifier: Double {
        get { double(for: "critChanceModifier") }
        set { set(newValue, for: "critChanceModifier") }
    }

    public var critPowerModifier: Double {
        get { double(for: "critPowerModifier") }
        set { set(newValue, for: "critPowerModifier") }
    }

    public var clubCoins: Int {
        get { int(for: "clubCoins") }
        set { set(newValue, for: "clubCoins") }
    }

    public var trashCanLevel: Int {
        get { int(for: "trashCanLevel") }
        set {
            set(newValue, for: "trashCanLevel") {
                return max(min(4, $0), 0)
            }

        }
    }

    public var houseUpgradeLevel: Int {
        get { int(for: "houseUpgradeLevel") }
        set {
            set(newValue, for: "houseUpgradeLevel") {
                return max(min(2, $0), 0)
            }
        }
    }

    public var daysUntilHouseUpgrade: Int {
        get { int(for: "daysUntilHouseUpgrade") }
        set { set(newValue, for: "daysUntilHouseUpgrade") }
    }

    public var daysLeftForToolUpgrade: Int {
        get { int(for: "daysLeftForToolUpgrade") }
        set {
            set(newValue, for: "daysLeftForToolUpgrade")

        }
    }

    public var magneticRadius: Int {
        get { int(for: "magneticRadius") }
        set { set(newValue, for: "magneticRadius") }
    }

    // Levels
    public var farmingLevel: Int {
        get { int(for: "farmingLevel") }
        set { set(newValue, for: "farmingLevel") }
    }
    public var miningLevel: Int {
        get { int(for: "miningLevel") }
        set { set(newValue, for: "miningLevel") }
    }
    public var combatLevel: Int {
        get { int(for: "combatLevel") }
        set { set(newValue, for: "combatLevel") }
    }
    public var foragingLevel: Int {
        get { int(for: "foragingLevel") }
        set { set(newValue, for: "foragingLevel") }
    }
    public var fishingLevel: Int {
        get { int(for: "fishingLevel") }
        set { set(newValue, for: "fishingLevel") }
    }
    public var luckLevel: Int {
        get { int(for: "luckLevel") }
        set { set(newValue, for: "luckLevel") }
    }

    // Added Levels
    public var addedFarmingLevel: Int {
        get { int(for: "addedFarmingLevel") }
        set { set(newValue, for: "addedFarmingLevel") }
    }
    public var addedMiningLevel: Int {
        get { int(for: "addedMiningLevel") }
        set { set(newValue, for: "addedMiningLevel") }
    }
    public var addedCombatLevel: Int {
        get { int(for: "addedCombatLevel") }
        set { set(newValue, for: "addedCombatLevel") }
    }
    public var addedForagingLevel: Int {
        get { int(for: "addedForagingLevel") }
        set { set(newValue, for: "addedForagingLevel") }
    }
    public var addedFishingLevel: Int {
        get { int(for: "addedFishingLevel") }
        set { set(newValue, for: "addedFishingLevel") }
    }
    public var addedLuckLevel: Int {
        get { int(for: "addedLuckLevel") }
        set { set(newValue, for: "addedLuckLevel") }
    }
    public var newSkillPointsToSpend: Int {
        get { int(for: "newSkillPointsToSpend") }
        set { set(newValue, for: "newSkillPointsToSpend") }
    }

}
