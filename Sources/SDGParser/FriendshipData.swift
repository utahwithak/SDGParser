//
//  File.swift
//  
//
//  Created by Carl Wieland on 9/16/22.
//

import Foundation
import SwiftyXMLParser

public class FriendshipData: XMLObject {
    private var element: XML.Element? {
        accessor.element
    }

    public var friendshipItems: [FriendshipItem] {
        let items = element?.childElements ?? []
        return items.map({ FriendshipItem(element: $0) })
    }
}
