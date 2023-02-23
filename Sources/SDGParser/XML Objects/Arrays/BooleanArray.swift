//
// COPYRIGHT 2023 Free Bits
// Created by Carl Wieland on 1/19/23
// 

import Foundation
import SwiftyXMLParser

public class BooleanArray: XMLArray<Bool> {
    init(element: XML.Element) {
        super.init(element: element, childElementName: "boolean") { element in
            XML.Accessor(element).bool ?? false
        } modifier: { element, newValue in
            element.text = newValue ? "true" : "false"
        }
    }
}
