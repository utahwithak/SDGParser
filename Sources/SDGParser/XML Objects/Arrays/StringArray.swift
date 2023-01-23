//
// COPYRIGHT 2023 Free Bits
// Created by Carl Wieland on 1/23/23
// 

import Foundation
import SwiftyXMLParser

public class StringArray: XMLArray<String> {
    init(element: XML.Element) {
        super.init(element: element, childElementName: "string") { element in
            XML.Accessor(element).text ?? ""
        } modifier: { element, newValue in
            element.text = newValue
        }
    }
}
