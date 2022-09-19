//
//  File.swift
//  
//
//  Created by Carl Wieland on 9/16/22.
//

import Foundation
import SwiftyXMLParser

public class ExperiencePoints: XMLObject {
    private var element: XML.Element? {
        accessor.element
    }


    public var farmingExperience: Int {
        get {
            if let text = element?.childElements[0].text {
                return Int(text) ?? 0
            }
            return 0
        }
        set {
            element?.childElements[0].text  = "\(newValue)"
        }
    }

    public var miningExperience: Int {
        get {
            if let text = element?.childElements[1].text {
                return Int(text) ?? 0
            }
            return 0
        }
        set {
            element?.childElements[1].text  = "\(newValue)"
        }
    }

    public var foragingExperience: Int {
        get {
            if let text = element?.childElements[2].text {
                return Int(text) ?? 0
            }
            return 0
        }
        set {
            element?.childElements[2].text  = "\(newValue)"
        }
    }

    public var fishingExperience: Int {
        get {
            if let text = element?.childElements[3].text {
                return Int(text) ?? 0
            }
            return 0
        }
        set {
            element?.childElements[3].text  = "\(newValue)"
        }
    }

    public var combatExperience: Int {
        get {
            if let text = element?.childElements[4].text {
                return Int(text) ?? 0
            }
            return 0
        }
        set {
            element?.childElements[4].text  = "\(newValue)"
        }
    }
}
