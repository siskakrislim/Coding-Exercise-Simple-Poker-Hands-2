//
//  ThreeOfAKindFinder.swift
//  Simle-Poker-Hands-2
//
//  Created by Bartosz Oczujda on 18/02/16.
//  Copyright © 2016 Pixelrockit. All rights reserved.
//

import Foundation

class ThreeOfAKindFinder: CardFinder {
    
    func find(cards:[Card]) -> Bool {
        let finder = SetFinder()
        let finding = finder.find(cards, length: length)
        return finding.found.count == length
    }
    
    var length:Int {
        get {
            return 3
        }
    }
    
}