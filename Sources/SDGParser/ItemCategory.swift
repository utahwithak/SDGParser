//
//  File.swift
//  
//
//  Created by Carl Wieland on 9/19/22.
//

import Foundation

public enum ItemCategory: Int {

    case gem = -2
    case fish = -4
    case egg = -5
    case milk = -6
    case cooking = -7
    case crafting = -8
    case bigCraftable = -9
    case minerals = -12
    case meat = -14
    case metalResources = -15
    case buildingResources = -16
    case sellAtPierres = -17
    case sellAtPierresAndMarnies = -18
    case fertilizer = -19
    case junk = -20
    case bait = -21
    case tackle = -22
    case sellAtFishShop = -23
    case furniture = -24
    case ingredients = -25
    case artisanGoods = -26
    case syrup = -27
    case monsterLoot = -28
    case equipment = -29
    case seeds = -74
    case vegetable = -75
    case fruits = -79
    case flowers = -80
    case greens = -81
    case hat = -95
    case ring = -96
    case weapon = -98
    case tool = -99

    case unknown = 0

    var stackable: Bool {
        switch self {
        case .tool, .weapon, .hat, .sellAtPierres, .sellAtPierresAndMarnies, .sellAtFishShop, .bigCraftable:
            return false
        default:
            return true
        }
    }
}
