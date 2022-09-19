//
//  FriendshipItem.swift
//  
//
//  Created by Carl Wieland on 9/16/22.
//

import Foundation
import SwiftyXMLParser

public class FriendshipItem: XMLObject {


    init(element: XML.Element) {
        super.init(accessor: XML.Accessor(element))
    }

    public var friendName: String {
        text(for: "key", "string")
    }

    public var points: Int {
        get {
            int(for: "value", "Friendship","Points")
        }
        set {
            set(newValue, for: "value", "Friendship", "Points") { propsedValue in
                return max(min(13000, propsedValue), 0)
            }
        }
    }

    public var giftsThisWeek: Int {
        get {
            int(for: "value", "Friendship","GiftsThisWeek")
        }
        set {
            set(newValue, for: "value", "Friendship", "GiftsThisWeek") { propsedValue in
                return max(min(2, propsedValue), 0)
            }
        }
    }

    public var talkedToToday: Bool {
        get {
            bool(for: "value", "Friendship","TalkedToToday")
        }
        set {
            set(newValue, for: "value", "Friendship", "TalkedToToday")
        }
    }

    public var proposalRejected: Bool {
        get {
            bool(for: "value", "Friendship","ProposalRejected")
        }
        set {
            set(newValue, for: "value", "Friendship", "ProposalRejected")
        }
    }

    public var roommateMarriage: Bool {
        get {
            bool(for: "value", "Friendship","RoommateMarriage")
        }
        set {
            set(newValue, for: "value", "Friendship", "RoommateMarriage")
        }
    }

}
