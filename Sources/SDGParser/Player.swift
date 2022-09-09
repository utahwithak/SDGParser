//
//  File.swift
//  File
//
//  Created by Carl Wieland on 8/30/21.
//

import Foundation
import SwiftyXMLParser

public class Player: XMLObject {

    public var name: String {
        get {
            text(for: "name")
        }
        set {
            set(newValue, for: "name")
        }
    }
    
    public var farmName: String {
        get {
            text(for: "farmName")
        }
        set {
            set(newValue, for: "farmName")
        }
    }
    
    public var money: Int {
        get {
            int(for: "money")
        }
        set {
            set(newValue, for: "money") {
                let max = Int(Int32.max)
                return min($0, max)
            }
        }
    }
}
