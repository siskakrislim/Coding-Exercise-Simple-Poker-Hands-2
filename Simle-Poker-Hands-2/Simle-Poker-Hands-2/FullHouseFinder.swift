//
//  FullHouseFinder.swift
//  Simle-Poker-Hands-2
//
//  Created by Bartosz Oczujda on 21/02/16.
//  Copyright © 2016 Pixelrockit. All rights reserved.
//

import Foundation

class FullHouseFinder: CardFinder {
    
    func find(cards:[Card]) -> Bool {
        let finder = SetFinder()        
        let firstFinding = finder.find(cards, length: 3)
        let secondFinding = finder.find(firstFinding.rest, length: length)
        
        let hasFoundFirst = firstFinding.found.count == 3
        let hasFoundSecond = secondFinding.found.count == length
        
        return hasFoundFirst && hasFoundSecond
    }
    
    var length:Int {
        get {
            return 2
        }
    }
    
}