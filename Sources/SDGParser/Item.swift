//
//  File.swift
//  
//
//  Created by Carl Wieland on 9/19/22.
//

import Foundation
import SwiftyXMLParser

public class Item: XMLObject {
    let element: XML.Element
    init(element: XML.Element) {
        self.element = element
        super.init(accessor: XML.Accessor(element))
    }

    public var isEmtpy: Bool {
        element.childElements.isEmpty
    }

    public var name: String {
        text(for: "name", defaultValue: ItemID(rawValue: int(for: "parentSheetIndex", defaultValue: -1))?.description ?? "")
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

    public var isMineral: Bool {
        accessor["type"].text == "Minerals"
    }

    public var isStackable: Bool {
        accessor["stack"].text != nil
    }

    public func makeItem(from: ItemID, count: Int, quality: Quality, type: ItemType = .none) {
        guard isEmtpy else {
            print("Attempting to make item from non empty item!")
            return
        }
        element.childElements.append(XML.Element(name: "parentSheetIndex", text: "\(from.id)"))
        element.childElements.append(XML.Element(name: "name", text: "\(from.description)"))
        element.childElements.append(XML.Element(name: "stack", text: "\(count)"))
        element.childElements.append(XML.Element(name: "Stack", text: "\(count)"))
        element.childElements.append(XML.Element(name: "quality", text: "\(quality.rawValue)"))
        if type != .none {
            element.childElements.append(XML.Element(name: "type", text: type.rawValue))
        }

        element.attributes["xsi:nil"] = nil
        element.attributes["p4:nil"] = nil
        element.attributes["p4:type"] = "Object"



    }
}
