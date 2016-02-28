//
//  TwoPairFinder.swift
//  Simle-Poker-Hands-2
//
//  Created by Bartosz Oczujda on 20/02/16.
//  Copyright © 2016 Pixelrockit. All rights reserved.
//

import Foundation

class TwoPairFinder: CardFinder {
    
    func find(cards:[Card]) -> Bool {
        let finder = SetValidator()
        
        //looking for the first pair
        let firstFinding = finder.find(cards, length: length)
        
        //looking for the second pair
        let secondFinding = finder.find(firstFinding.rest, length: length)
        
        return firstFinding.found.count == length && secondFinding.found.count == length
    }
    
    var length:Int {
        get {
            return 2
        }
    }
    
}