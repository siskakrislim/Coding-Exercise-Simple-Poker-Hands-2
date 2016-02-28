//
//  FlushFinder.swift
//  Simle-Poker-Hands-2
//
//  Created by Bartosz Oczujda on 28/02/16.
//  Copyright © 2016 Pixelrockit. All rights reserved.
//

import Foundation

class FlushFinder: CardFinder {
    
    func find(cards: [Card]) -> Bool {
        let finder = SetValidator()
        let finding = finder.find(cards, length: length, sameSuit: true)
        return finding.found.count == length
    }
    
    var length:Int {
        get {
            return 5
        }
    }
}

    