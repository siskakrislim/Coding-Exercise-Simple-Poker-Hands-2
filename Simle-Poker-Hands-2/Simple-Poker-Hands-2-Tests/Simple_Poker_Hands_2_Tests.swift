//
//  Simple_Poker_Hands_2_Tests.swift
//  Simple-Poker-Hands-2-Tests
//
//  Created by Bartosz Oczujda on 16/02/16.
//  Copyright © 2016 Pixelrockit. All rights reserved.
//

import XCTest

class Simple_Poker_Hands_2_Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testHighCardHand_success() {
        let cards = [
            Card(rank: CardRank.Two, suit: CardSuit.Clubs),
            Card(rank: CardRank.Four, suit: CardSuit.Hearts),
            Card(rank: CardRank.Nine, suit: CardSuit.Diamonds),
            Card(rank: CardRank.Queen, suit: CardSuit.Hearts),
            Card(rank: CardRank.Ace, suit: CardSuit.Diamonds),
        ]
        
        let highCardFinder = HighCardFinder()
        XCTAssertTrue(highCardFinder.find(cards))
    }
    
    func testPairFinder_success() {
        let cards = [
            Card(rank: CardRank.Two, suit: CardSuit.Clubs),
            Card(rank: CardRank.Two, suit: CardSuit.Hearts),
            Card(rank: CardRank.Nine, suit: CardSuit.Diamonds),
            Card(rank: CardRank.Queen, suit: CardSuit.Hearts),
            Card(rank: CardRank.Ace, suit: CardSuit.Diamonds),
        ]

        let pairFinder = PairFinder()
        XCTAssertTrue(pairFinder.find(cards))
    }
    
    func testPairFinder_fail() {
        let cards = [
            Card(rank: CardRank.Two, suit: CardSuit.Clubs),
            Card(rank: CardRank.Four, suit: CardSuit.Hearts),
            Card(rank: CardRank.Nine, suit: CardSuit.Diamonds),
            Card(rank: CardRank.Queen, suit: CardSuit.Hearts),
            Card(rank: CardRank.Ace, suit: CardSuit.Diamonds),
        ]
        
        let pairFinder = PairFinder()
        XCTAssertFalse(pairFinder.find(cards))
    }
    
    func testThreeOfAKindFinder_success() {
        let cards = [
            Card(rank: CardRank.Two, suit: CardSuit.Clubs),
            Card(rank: CardRank.Two, suit: CardSuit.Hearts),
            Card(rank: CardRank.Two, suit: CardSuit.Diamonds),
            Card(rank: CardRank.Queen, suit: CardSuit.Hearts),
            Card(rank: CardRank.Ace, suit: CardSuit.Diamonds),
        ]

        let finder = ThreeOfAKindFinder()
        XCTAssertTrue(finder.find(cards))
    }
    
    func testThreeOfAKindFinder_fail() {
        let cards = [
            Card(rank: CardRank.Two, suit: CardSuit.Clubs),
            Card(rank: CardRank.Five, suit: CardSuit.Hearts),
            Card(rank: CardRank.Two, suit: CardSuit.Diamonds),
            Card(rank: CardRank.Queen, suit: CardSuit.Hearts),
            Card(rank: CardRank.Ace, suit: CardSuit.Diamonds),
        ]
        
        let finder = ThreeOfAKindFinder()
        XCTAssertFalse(finder.find(cards))
    }
    
    func testFourOfAKindFinder_success() {
        let cards = [
            Card(rank: CardRank.Two, suit: CardSuit.Clubs),
            Card(rank: CardRank.Two, suit: CardSuit.Hearts),
            Card(rank: CardRank.Two, suit: CardSuit.Diamonds),
            Card(rank: CardRank.Two, suit: CardSuit.Spades),
            Card(rank: CardRank.Ace, suit: CardSuit.Diamonds),
        ]
        
        let finder = FourOfAKindFinder()
        XCTAssertTrue(finder.find(cards))
    }
    
    func testFourOfAKindFinder_fail() {
        let cards = [
            Card(rank: CardRank.Two, suit: CardSuit.Clubs),
            Card(rank: CardRank.Two, suit: CardSuit.Hearts),
            Card(rank: CardRank.Two, suit: CardSuit.Diamonds),
            Card(rank: CardRank.Queen, suit: CardSuit.Hearts),
            Card(rank: CardRank.Ace, suit: CardSuit.Diamonds),
        ]
        
        let finder = FourOfAKindFinder()
        XCTAssertFalse(finder.find(cards))
    }
    
    func testTwoPairFinder_success() {
        let cards = [
            Card(rank: CardRank.Two, suit: CardSuit.Clubs),
            Card(rank: CardRank.Two, suit: CardSuit.Hearts),
            Card(rank: CardRank.Four, suit: CardSuit.Diamonds),
            Card(rank: CardRank.Four, suit: CardSuit.Hearts),
            Card(rank: CardRank.Ace, suit: CardSuit.Diamonds),
        ]
        
        let finder = TwoPairFinder()
        XCTAssertTrue(finder.find(cards))
    }
    
    func testTwoPairFinder_fail() {
        let cards = [
            Card(rank: CardRank.Two, suit: CardSuit.Clubs),
            Card(rank: CardRank.Two, suit: CardSuit.Hearts),
            Card(rank: CardRank.Four, suit: CardSuit.Diamonds),
            Card(rank: CardRank.Four, suit: CardSuit.Hearts),
            Card(rank: CardRank.Four, suit: CardSuit.Diamonds),
        ]
        
        let finder = TwoPairFinder()
        XCTAssertFalse(finder.find(cards))
    }
    
    func testFullHouseFinder_success() {
        let cards = [
            Card(rank: CardRank.Two, suit: CardSuit.Clubs),
            Card(rank: CardRank.Two, suit: CardSuit.Hearts),
            Card(rank: CardRank.Four, suit: CardSuit.Diamonds),
            Card(rank: CardRank.Four, suit: CardSuit.Hearts),
            Card(rank: CardRank.Four, suit: CardSuit.Diamonds),
        ]
        
        let finder = FullHouseFinder()
        XCTAssertTrue(finder.find(cards))
    }
    
    func testFullHouseFinderUnordered_success() {
        let cards = [
            Card(rank: CardRank.Four, suit: CardSuit.Diamonds),
            Card(rank: CardRank.Two, suit: CardSuit.Clubs),
            Card(rank: CardRank.Two, suit: CardSuit.Hearts),
            Card(rank: CardRank.Four, suit: CardSuit.Hearts),
            Card(rank: CardRank.Four, suit: CardSuit.Diamonds),
        ]
        
        let finder = FullHouseFinder()
        XCTAssertTrue(finder.find(cards))
    }
    
    func testFullHouseFinderUnordered2_success() {
        let cards = [
            Card(rank: CardRank.Four, suit: CardSuit.Diamonds),
            Card(rank: CardRank.Four, suit: CardSuit.Clubs),
            Card(rank: CardRank.Two, suit: CardSuit.Hearts),
            Card(rank: CardRank.Four, suit: CardSuit.Hearts),
            Card(rank: CardRank.Two, suit: CardSuit.Diamonds),
        ]
        
        let finder = FullHouseFinder()
        XCTAssertTrue(finder.find(cards))
    }
    
    func testFullHouseFinder_fail() {
        let cards = [
            Card(rank: CardRank.Two, suit: CardSuit.Clubs),
            Card(rank: CardRank.Two, suit: CardSuit.Hearts),
            Card(rank: CardRank.Four, suit: CardSuit.Diamonds),
            Card(rank: CardRank.Four, suit: CardSuit.Hearts),
            Card(rank: CardRank.Three, suit: CardSuit.Diamonds),
        ]
        
        let finder = FullHouseFinder()
        XCTAssertFalse(finder.find(cards))
    }
    
    func testStraightFinder_success() {
        let cards = [
            Card(rank: CardRank.Four, suit: CardSuit.Diamonds),
            Card(rank: CardRank.Five, suit: CardSuit.Clubs),
            Card(rank: CardRank.Six, suit: CardSuit.Hearts),
            Card(rank: CardRank.Seven, suit: CardSuit.Hearts),
            Card(rank: CardRank.Eight, suit: CardSuit.Diamonds),
        ]
        
        let finder = StraightFinder()
        XCTAssertTrue(finder.find(cards))
    }
    
    func testStraightFinder_success2() {
        let cards = [
            Card(rank: CardRank.Four, suit: CardSuit.Diamonds),
            Card(rank: CardRank.Eight, suit: CardSuit.Clubs),
            Card(rank: CardRank.Six, suit: CardSuit.Hearts),
            Card(rank: CardRank.Seven, suit: CardSuit.Hearts),
            Card(rank: CardRank.Five, suit: CardSuit.Diamonds),
        ]
        
        let finder = StraightFinder()
        XCTAssertTrue(finder.find(cards))
    }
    
    func testStraightFinder__fail() {
        let cards = [
            Card(rank: CardRank.Two, suit: CardSuit.Clubs),
            Card(rank: CardRank.Two, suit: CardSuit.Hearts),
            Card(rank: CardRank.Four, suit: CardSuit.Diamonds),
            Card(rank: CardRank.Four, suit: CardSuit.Hearts),
            Card(rank: CardRank.Three, suit: CardSuit.Diamonds),
        ]
        
        let finder = StraightFinder()
        XCTAssertFalse(finder.find(cards))
    }
    
    func testFlushFinder_success() {
        let cards = [
            Card(rank: CardRank.Four, suit: CardSuit.Diamonds),
            Card(rank: CardRank.Eight, suit: CardSuit.Diamonds),
            Card(rank: CardRank.Queen, suit: CardSuit.Diamonds),
            Card(rank: CardRank.Seven, suit: CardSuit.Diamonds),
            Card(rank: CardRank.Eight, suit: CardSuit.Diamonds),
        ]
        
        let finder = FlushFinder()
        XCTAssertTrue(finder.find(cards))
    }
    
    func testFlushFinder_failure() {
        let cards = [
            Card(rank: CardRank.Four, suit: CardSuit.Diamonds),
            Card(rank: CardRank.Eight, suit: CardSuit.Clubs),
            Card(rank: CardRank.Queen, suit: CardSuit.Diamonds),
            Card(rank: CardRank.Seven, suit: CardSuit.Diamonds),
            Card(rank: CardRank.Eight, suit: CardSuit.Diamonds),
        ]
        
        let finder = FlushFinder()
        XCTAssertFalse(finder.find(cards))
    }
    
    func testStraightFlushFinder_success() {
        let cards = [
            Card(rank: CardRank.Four, suit: CardSuit.Diamonds),
            Card(rank: CardRank.Five, suit: CardSuit.Diamonds),
            Card(rank: CardRank.Six, suit: CardSuit.Diamonds),
            Card(rank: CardRank.Seven, suit: CardSuit.Diamonds),
            Card(rank: CardRank.Eight, suit: CardSuit.Diamonds),
        ]
        
        let finder = StraightFlushFinder()
        XCTAssertTrue(finder.find(cards))
    }
    
}
