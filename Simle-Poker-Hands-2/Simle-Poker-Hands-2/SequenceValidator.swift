//
//  SequenceFinder.swift
//  Simle-Poker-Hands-2
//
//  Created by Bartosz Oczujda on 21/02/16.
//  Copyright © 2016 Pixelrockit. All rights reserved.
//

import Foundation

class SequenceValidator {
    
    func find(cards:[Card], length:Int) -> (found:[Card], rest:[Card])  {
        
        var filtered = [Card]()
        let rest = [Card]()
        
        let sortedCards = cards.sort({ $0.rank.rawValue < $1.rank.rawValue })
        
        var currentVal = cards.first!.rank.rawValue
        var nextVal = 0
        var isSequence = false
        
        for var i = 0; i < sortedCards.count; i++
        {
            if(i < sortedCards.count - 1) {
                nextVal = sortedCards[i+1].rank.rawValue
                
                if(nextVal == currentVal + 1) {
                    isSequence = true;
                }
                else{
                    isSequence = false
                    break
                }
                
                currentVal = nextVal
                
            }
            
        }
        
        if(isSequence){
            filtered = sortedCards
        }
        
        return (filtered, rest)
        
    }
    
    private func getRest(fullSet:[Card], cardToExtract:Card) -> [Card]{
        
        return fullSet.filter({ $0.rank != cardToExtract.rank })
        
    }
    
}