//
//  FourOfAKindFinder.swift
//  Simle-Poker-Hands-2
//
//  Created by Bartosz Oczujda on 18/02/16.
//  Copyright © 2016 Pixelrockit. All rights reserved.
//

import Foundation

class FourOfAKindFinder {
    
    func find(cards:[String]) -> Bool {
        
        var filtered = [String]()
        let length = 4
        
        for card in cards {
            filtered = cards.filter({ $0.characters.first == card.characters.first })
            if (filtered.count == length) { return true }
        }
        
        return false
    }
    
}