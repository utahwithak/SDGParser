//
//  File.swift
//  File
//
//  Created by Carl Wieland on 8/27/21.
//

import Foundation
import SwiftyXMLParser

public class Game {
    
    internal let accessor: XML.Accessor
    
    public let player: Player
    
    internal init(accessor: XML.Accessor) {
        self.accessor = accessor
        player = Player(root: accessor["SaveGame","player"])
    }
    
    
    
}
