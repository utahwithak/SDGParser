//
// COPYRIGHT 2023 Free Bits
// Created by Carl Wieland on 1/18/23
// 

import Foundation
import SwiftyXMLParser

public class GameLocation: XMLObject {
    public enum LocationType: String {
        case unknown
        case farm = "Farm"
        case farmHouse = "FarmHouse"
        case farmCave = "FarmCave"
        case town = "Town"
        case manorHouse = "ManorHouse"
        case seedShop = "SeedShop"
        case beach = "Beach"
        case mountain = "Mountain"
        case forest = "Forest"
        case wizardHouse = "WizardHouse"
        case busStop = "BusStop"
        case mine = "Mine"
        case sewer = "Sewer"
        case bugLand = "BugLand"
        case desert = "Desert"
        case club = "Club"
        case libraryMuseum = "LibraryMuseum"
        case adventureGuild = "AdventureGuild"
        case woods = "Woods"
        case railroad = "Railroad"
        case summit = "Summit"
        case fishShop = "FishShop"
        case bathHousePool = "BathHousePool"
        case communityCenter = "CommunityCenter"
        case jojaMart = "JojaMart"
        case cellar = "Cellar"
        case beachNightMarket = "BeachNightMarket"
        case mermaidHouse = "MermaidHouse"
        case submarine = "Submarine"
        case abandonedJojaMart = "AbandonedJojaMart"
        case movieTheater = "MovieTheater"
        case boatTunnel = "BoatTunnel"
        case islandSouth = "IslandSouth"
        case islandSouthEast = "IslandSouthEast"
        case islandSouthEastCave = "IslandSouthEastCave"
        case islandEast = "IslandEast"
        case islandWest = "IslandWest"
        case islandNorth = "IslandNorth"
        case islandHut = "IslandHut"
        case islandWestCave1 = "IslandWestCave1"
        case islandLocation = "IslandLocation"
        case islandFieldOffice = "IslandFieldOffice"
        case islandFarmHouse = "IslandFarmHouse"
        case islandShrine = "IslandShrine"
        case islandFarmCave = "IslandFarmCave"
        case caldera = "Caldera"

    }

    let type: LocationType

    init(type: LocationType, element: XML.Element) {
        self.type = type
        super.init(accessor: XML.Accessor(element))
    }

    public var name: String {
        text(for: "name")
    }

}
