//
// COPYRIGHT 2023 Free Bits
// Created by Carl Wieland on 1/23/23
// 

import Foundation
import SwiftyXMLParser

public class XMLArray<T>: XMLObject {

    let element: XML.Element

    let converter: (XML.Element) -> T
    let modifier: (XML.Element, T) -> Void

    let childElementName: String

    init(element: XML.Element, childElementName: String, converter: @escaping (XML.Element) -> T, modifier: @escaping (XML.Element, T) -> Void) {
        self.childElementName = childElementName
        self.element = element
        self.converter = converter
        self.modifier = modifier
        super.init(accessor: XML.Accessor(element))
    }

    var values: [T] {
        element.childElements.map { converter($0) }
    }

    public func set(_ value: T, at: Int) {
        switch XML.Accessor(element.childElements[at]) {
        case .singleElement(let element):
            modifier(element, value)
        default:
            print("Failed to set value!")
        }
    }

    public var count: Int {
        element.childElements.count
    }

    public subscript(index: Int) -> T {
        get {
            converter(element.childElements[index])
        }
        set {
            set(newValue, at: index)
        }
    }

    public func setAll(to value: T) {
        for i in 0..<count {
            set(value, at: i)
        }
    }

    public func append(_ newValue: T) {
        let newElement = XML.Element(name: childElementName)
        modifier(newElement, newValue)
        element.childElements.append(newElement)
    }
}
