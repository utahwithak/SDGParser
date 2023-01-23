//
// COPYRIGHT 2023 Free Bits
// Created by Carl Wieland on 1/18/23
// 

import Foundation
import SwiftyXMLParser

public class Locations: XMLObject {

    private var element: XML.Element? {
        accessor.element
    }

    public var items: [GameLocation] {
        let items = element?.childElements ?? []
        return items.map({
            if let type = $0.attributes["p3:type"], let locationType = GameLocation.LocationType(rawValue: type) {
                switch locationType {
                case .communityCenter:
                    return CommunityCenter(element: $0)
                default:
                    return GameLocation(type: locationType, element: $0)
                }
            } else {
                return GameLocation(type: .unknown, element: $0)
            }
        })
    }
}
