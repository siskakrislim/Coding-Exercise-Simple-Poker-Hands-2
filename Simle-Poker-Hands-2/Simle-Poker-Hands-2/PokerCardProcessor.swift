//
//  PokerCardProcessor.swift
//  Simle-Poker-Hands-2
//
//  Created by Bartosz Oczujda on 28/02/16.
//  Copyright © 2016 Pixelrockit. All rights reserved.
//

import Foundation

class PokerCardProcessor: CardProcessor {
    
    func findHand(cards: [Card]) -> [Card] {
        
        let hands = PokerHands.enumerate().reverse()
        
        for hand in hands {
            let finder = hand.getFinder()
            let found = finder.find(cards)
            
            if(found) {
                print(hand)
                break
            }
            
        }
        
        return cards
    }
    
}