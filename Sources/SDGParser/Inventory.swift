//
//  File.swift
//  
//
//  Created by Carl Wieland on 9/19/22.
//

import Foundation
import SwiftyXMLParser

public class Inventory: XMLObject {

    private var element: XML.Element? {
        accessor.element
    }

    public var items: [Item] {
        let items = element?.childElements ?? []
        return items.map({ Item(element: $0) })
    }
}
