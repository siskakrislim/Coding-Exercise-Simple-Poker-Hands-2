//
//  StraightFlushFinder.swift
//  Simle-Poker-Hands-2
//
//  Created by Bartosz Oczujda on 28/02/16.
//  Copyright © 2016 Pixelrockit. All rights reserved.
//

import Foundation

class StraightFlushFinder: CardFinder {
    
    func find(cards:[Card]) -> Bool {
        let sequenceFinder = SequenceValidator()
        let sequenceResult = sequenceFinder.find(cards, length: length)
        
        let areInSequence = sequenceResult.found.count == length
        
        let setFinder = SetValidator()
        let setResult = setFinder.find(cards, length: length, sameSuit: true)
        
        let haveSameSuit = setResult.found.count == length
        
        return areInSequence && haveSameSuit
    }
    
    var length:Int {
        get {
            return 5
        }
    }
    
}