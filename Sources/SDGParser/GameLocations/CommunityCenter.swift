//
// COPYRIGHT 2023 Free Bits
// Created by Carl Wieland on 1/19/23
// 

import Foundation
import SwiftyXMLParser

public class CommunityCenter: GameLocation {

    let bundles: [Int: BooleanArray]

    let areasComplete: BooleanArray

    init(element: XML.Element) {
        if let element = XML.Accessor(element)["bundles"].element {
            bundles = [Int: BooleanArray](element: element) { valueElement in
                BooleanArray(element: valueElement)
            }
        } else {
            bundles = [:]
        }
        if let element = XML.Accessor(element)["areasComplete"].element {
            areasComplete = BooleanArray(element: element)
        } else {
            areasComplete = BooleanArray(element: element)
        }

        super.init(type: .communityCenter, element: element)
    }

    public func markBundleComplete(with id: Int) {
        if let bundle = bundles[id] {
            bundle.setAll(to: true)
        }
    }

    public func markBundleComplete(with id: Int, at index: Int) {
        if let bundle = bundles[id] {
            bundle.set(true, at: index)
        }
    }

    public func hasFinished(bundle id: Int, at index: Int) -> Bool {
        guard let bundle = bundles[id] else {
            return false
        }
        guard index < bundle.count else {
            return false
        }
        return bundle[index]
    }

    public func markRoomComplete(_ room: BundleData.Room) {
        areasComplete[room.roomID] = true
        numberOfStars += 1
    }

    public var numberOfStars: Int {
        get {
            int(for: "numberOfStarsOnPlaque")
        }
        set {
            set(newValue, for: "numberOfStarsOnPlaque") { value in
                min(value, 6)
            }
        }
    }
}
