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
        let cards = ["2C","4H","9D","QH","AD"]
        
        let highCardFinder = HighCardFinder()
        XCTAssertTrue(highCardFinder.find(cards))
    }
    
    func testPairFinder_success() {
        let cards = ["2C","2H","9D","QH","AD"]

        let pairFinder = PairFinder()
        XCTAssertTrue(pairFinder.find(cards))
    }
    
    func testPairFinder_fail() {
        let cards = ["2C","3H","9D","QH","AD"]
        
        let pairFinder = PairFinder()
        XCTAssertFalse(pairFinder.find(cards))
    }
}
