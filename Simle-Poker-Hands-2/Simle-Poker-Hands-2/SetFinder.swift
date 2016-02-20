//
//  SetFinder.swift
//  Simle-Poker-Hands-2
//
//  Created by Bartosz Oczujda on 20/02/16.
//  Copyright © 2016 Pixelrockit. All rights reserved.
//

import Foundation

class SetFinder {
    
    func find(cards:[Card], length:Int) -> Bool {
        
        var filtered = [Card]()
        
        for card in cards {
            filtered = cards.filter({ $0.rank == card.rank })
            if (filtered.count == length) { return true }
        }
        
        return false
    }
    
}