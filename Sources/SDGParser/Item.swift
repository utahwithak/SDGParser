//
//  File.swift
//  
//
//  Created by Carl Wieland on 9/19/22.
//

import Foundation
import SwiftyXMLParser

public class Item: XMLObject {

    init(element: XML.Element) {
        super.init(accessor: XML.Accessor(element))
    }

    public var isEmtpy: Bool {
        return accessor.element?.childElements.isEmpty ?? true
    }

    public var name: String {
        text(for: "name")
    }

    public var category: ItemCategory {
        get {
            ItemCategory(rawValue: int(for: "category")) ?? .unknown
        }
    }

    public var stack: Int {
        get {
            int(for: "Stack")
        }
        set {
            if isStackable {
                set(newValue, for: "Stack")
                set(newValue, for: "stack")
            }
        }
    }

    public var isStackable: Bool {
        accessor["stack"].text != nil
    }
}
