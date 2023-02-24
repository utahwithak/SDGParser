//
// COPYRIGHT 2023 Free Bits
// Created by Carl Wieland on 2/24/23
// 

import Foundation
import SwiftyXMLParser

public class IntArray: XMLArray<Int> {
    init(element: XML.Element) {
        super.init(element: element, childElementName: "int") { element in
            XML.Accessor(element).int ?? -1
        } modifier: { element, newValue in
            element.text = "\(newValue)"
        }
    }
}
