//
//  main.swift
//  Simle-Poker-Hands-2
//
//  Created by Bartosz Oczujda on 07/02/16.
//  Copyright © 2016 Pixelrockit. All rights reserved.
//

import Foundation

func findCards() -> Void {
    let cardProcessor = PokerCardProcessor()
    
    let cards = [
        Card(rank: CardRank.Four, suit: CardSuit.Diamonds),
        Card(rank: CardRank.Five, suit: CardSuit.Diamonds),
        Card(rank: CardRank.Six, suit: CardSuit.Clubs),
        Card(rank: CardRank.Seven, suit: CardSuit.Diamonds),
        Card(rank: CardRank.Eight, suit: CardSuit.Diamonds),
    ]
    
    cardProcessor.findHand(cards)
}

findCards()



