//
//  PokerHands.swift
//  Simle-Poker-Hands-2
//
//  Created by Bartosz Oczujda on 28/02/16.
//  Copyright © 2016 Pixelrockit. All rights reserved.
//

import Foundation

enum PokerHands: Int, CustomStringConvertible {
    case HighCard, OnePair, TwoPair, ThreeOfAKind, Straight, Flush, FullHouse, FourOfAKind, StraightFlush
    
    //needed for looping over enums since there is no default functionality for it
    static func enumerate() -> AnyGenerator<PokerHands> {
        var nextIndex = HighCard.rawValue
        return AnyGenerator { PokerHands(rawValue: nextIndex++) }
    }
    
    func getFinder() -> CardFinder {
        switch (self) {
        case .HighCard:
            return HighCardFinder()
        case .OnePair:
            return PairFinder()
        case .TwoPair:
            return TwoPairFinder()
        case .ThreeOfAKind:
            return ThreeOfAKindFinder()
        case .Straight:
            return StraightFinder()
        case .Flush:
            return FlushFinder()
        case .FullHouse:
            return FullHouseFinder()
        case .FourOfAKind:
            return FourOfAKindFinder()
        case .StraightFlush:
            return StraightFlushFinder()
        }
    }
    
    var description:String {
        switch (self) {
        case .HighCard:
            return "HighCardFinder"
        case .OnePair:
            return "PairFinder"
        case .TwoPair:
            return "TwoPairFinder"
        case .ThreeOfAKind:
            return "ThreeOfAKindFinder"
        case .Straight:
            return "StraightFinder"
        case .Flush:
            return "FlushFinder"
        case .FullHouse:
            return "FullHouseFinder"
        case .FourOfAKind:
            return "FourOfAKindFinder"
        case .StraightFlush:
            return "StraightFlushFinder"
        }
    }
}