//
// COPYRIGHT 2023 Free Bits
// Created by Carl Wieland on 1/19/23
// 

import Foundation
import SwiftyXMLParser

public class BundleData: XMLObject {

    let rawData: [String: String]

    public let roomData: [Room]

    init(accessor: XML.Accessor) {
        if let element = accessor.element {
            rawData = [String: String](element: element) { valueElement in
                valueElement.text ?? ""
            }
        } else {
            rawData = [String: String]()
        }

        var roomData = [Room]()
        for (key, value) in rawData {
            let roomSplit =  key.split(separator: "/")
            guard roomSplit.count == 2, let id = Int(roomSplit[1]) else {
                continue
            }

            let roomName = String(roomSplit[0])

            let bundleArray = [Bundle(id: id, bundleString: value)]
            if let existingIndex = roomData.firstIndex(where: { $0.name == roomName }) {
                roomData[existingIndex] = Room(name: roomName, bundles: (roomData[existingIndex].bundles + bundleArray).sorted(by: { $0.id < $1.id}))
            } else {
                let room = Room(name: roomName, bundles: bundleArray)
                roomData.append(room)
            }
        }

        self.roomData = roomData.sorted(by: {
            ($0.bundles.min(by: { $0.id < $1.id })?.id ?? 0) < ($1.bundles.min(by: { $0.id < $1.id })?.id ?? 0)
        })


        super.init(accessor: accessor)
    }

    public struct Room: Identifiable {
        public var id: String {
            name
        }
        public let name: String
        public let bundles: [Bundle]

        public var roomID: Int {
            switch name {
            case "Pantry": return 0
            case "Fish Tank": return 1
            case "Crafts Room": return 2
            case "Boiler Room": return 3
            case "Vault": return 4
            case "Bulletin Board": return 5
            default:
                return 0
            }
        }
    }

    public struct Bundle: Identifiable {
        public let id: Int
        public let name: String
        let reward: Reward
        public let requirements: [Requirement]
        let color: Int
        public let required: Int?
        init(id: Int, bundleString: String) {
            self.id = id
            let splits = bundleString.replacingOccurrences(of: "//", with: "/ /").split(separator: "/")

            name = String(splits[0])
            reward = Reward(raw: String(splits[1]))
            let requirementString = String(splits[2])
            let requirementInts = requirementString.split(separator: " ").map { Int($0) }
            var requirements = [Requirement]()
            for i in stride(from: 0, to: requirementInts.count, by: 3) {

                requirements.append(Requirement(itemID: requirementInts[i].map({ ItemID(rawValue: $0) ?? .unknown }) ?? .unknown, requiredCount: requirementInts[i + 1] ?? -1, minimumQuality: requirementInts[i + 2].map { Quality(rawValue: $0) ?? .none } ?? .none))
            }
            self.requirements = requirements

            self.color = Int(splits[3]) ?? 0
            if splits.count > 4 {
                required = Int(splits[4])
            } else {
                required = nil
            }

        }
    }

    enum RewardType: String {
        case unknown = ""
        case object = "O"
        case bigObject = "BO"
        case furniture = "F"
        case hat = "H"
        case clothing = "C"
        case ring = "R"
    }
    struct Reward {
        let type: RewardType
        let id: Int
        let count: Int
        init(raw: String) {
            let split = raw.split(separator: " ")
            if split.count == 3 {
                type = RewardType(rawValue: String(split[0])) ?? .unknown
                id = Int(split[1]) ?? -1
                count = Int(split[2]) ?? -1
            } else {
                type = .unknown
                id = -1
                count = -1
            }
        }
    }

    public struct Requirement: Identifiable {
        public var id: String {
            "\(itemID.rawValue)-\(requiredCount)-\(minimumQuality.rawValue)"
        }
        public let itemID: ItemID
        public let requiredCount: Int
        public let minimumQuality: Quality
    }
}

