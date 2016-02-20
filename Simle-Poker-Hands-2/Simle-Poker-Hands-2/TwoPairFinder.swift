//
//  TwoPairFinder.swift
//  Simle-Poker-Hands-2
//
//  Created by Bartosz Oczujda on 20/02/16.
//  Copyright © 2016 Pixelrockit. All rights reserved.
//

import Foundation

class TwoPairFinder: CardFinder {
    
    func find(cards:[Card]) -> Bool {
        let finder = SetFinder()
        return finder.find(cards, length: length)
    }
    
    var length:Int {
        get {
            return 2
        }
    }
    
}