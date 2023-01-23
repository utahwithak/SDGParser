//
// COPYRIGHT 2023 Free Bits
// Created by Carl Wieland on 1/19/23
// 

import Foundation
import SwiftyXMLParser

public extension Dictionary where Key == Int {

    init(element: XML.Element, converter: (XML.Element) -> Value ) {
        self.init(uniqueKeysWithValues: element.childElements.compactMap { child in
            guard child.name == "item" else {
                print("invalid child element:\(child.name)")
                return nil
            }
            let childAccessor = XML.Accessor(child)
            guard let children = childAccessor["value"].element?.childElements, children.count == 1, let value = children.first else {
                print("Failed to find value")
                return nil
            }

            guard let key = childAccessor["key","int"].int else {
                print("Failed to find key")
                return nil
            }
            return (key, converter(value))
        })

    }
}

public extension Dictionary where Key == String {

    init(element: XML.Element, converter: (XML.Element) -> Value) {
        self.init(uniqueKeysWithValues: element.childElements.compactMap { child in
            guard child.name == "item" else {
                print("invalid child element:\(child.name)")
                return nil
            }
            let childAccessor = XML.Accessor(child)
            guard let children = childAccessor["value"].element?.childElements, children.count == 1, let value = children.first else {
                print("Failed to find value")
                return nil
            }

            guard let key = childAccessor["key","string"].text else {
                print("Failed to find key")
                return nil
            }
            return (key, converter(value))
        })
    }

}
