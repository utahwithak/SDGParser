//
//  File.swift
//  
//
//  Created by Carl Wieland on 9/8/22.
//

import Foundation
import SwiftyXMLParser

open class XMLObject {
    let accessor: XML.Accessor

    let baseKeys: [String]

    init(accessor: XML.Accessor, offsetKeys: [String] = []) {
        baseKeys = offsetKeys
        self.accessor = accessor
    }

    func text(for key: String..., defaultValue: String = "") -> String {
        return accessor[baseKeys + key].text ?? defaultValue
    }
    func int(for key: String..., defaultValue: Int = 0) -> Int {
        return accessor[baseKeys + key].int ?? defaultValue
    }
    func double(for key: String..., defaultValue: Double = 0) -> Double {
        return accessor[baseKeys + key].double ?? defaultValue
    }
    func bool(for key: String..., defaultValue: Bool = false) -> Bool {
        return accessor[baseKeys + key].bool ?? defaultValue
    }

    func set(_ text: String, for key: String...) {
        switch accessor[baseKeys + key] {
        case .singleElement(let element):
            element.text = text
        default:
            print("failed to set text for:\(key)")

            return
        }
    }
    func set(_ int: Int, for key: String..., formatter: (Int) -> Int = { $0 }) {
        switch accessor[baseKeys + key] {
        case .singleElement(let element):
            element.text = "\(formatter(int))"
        default:
            print("failed to set text for:\(key)")

            return
        }
    }
    func set(_ double: Double, for key: String...) {
        switch accessor[baseKeys + key] {
        case .singleElement(let element):
            let formatter = NumberFormatter()
            formatter.maximumFractionDigits = 2
            element.text = formatter.string(from: NSNumber(value: double))
        default:
            print("failed to set text for:\(key)")

            return
        }
    }

    func set(_ bool: Bool, for key: String...) {
        switch accessor[baseKeys + key] {
        case .singleElement(let element):
            element.text =  bool ? "true" : "false"
        default:
            print("failed to set bool for:\(key)")
            return
        }
    }

    
}
