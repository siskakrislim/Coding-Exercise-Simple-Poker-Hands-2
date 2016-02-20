//
//  HighCardFinder.swift
//  Simle-Poker-Hands-2
//
//  Created by Bartosz Oczujda on 16/02/16.
//  Copyright © 2016 Pixelrockit. All rights reserved.
//

import Foundation

class HighCardFinder: CardFinder {
    
    func find(cards:[Card]) -> Bool {
        return true
    }
    
    var length:Int {
        get {
            return 1
        }
    }
    
}