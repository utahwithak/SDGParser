//
//  File.swift
//  File
//
//  Created by Carl Wieland on 8/30/21.
//

import Foundation
import SwiftyXMLParser

public class Player {
    
    let accessor: XML.Accessor
    init(root: XML.Accessor) {
        self.accessor = root
    }

    public var name: String {
        get {
            return accessor["name"].text ?? ""
        }
        set {
            
            switch accessor["name"] {
            case .singleElement(let element):
                element.text = newValue
            default:
                print("FAILED TO SET NAME!")
            }
        }
    }
    
    public var farmName: String {
        get {
            return accessor["farmName"].text ?? ""
        }
        set {
            
            switch accessor["farmName"] {
            case .singleElement(let element):
                element.text = newValue
            default:
                print("FAILED TO SET Farm NAME!")
            }
        }
    }
    
    public var money: Int {
        get {
            return accessor["money"].int ?? 0
        }
        set {
            switch accessor["money"] {
            case .singleElement(let element):
                element.text = "\(newValue)"
            default:
                print("FAILED TO SET money!")
            }
        }
    }
}
