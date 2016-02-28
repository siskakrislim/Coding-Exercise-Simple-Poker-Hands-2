//
//  CardProcessor.swift
//  Simle-Poker-Hands-2
//
//  Created by Bartosz Oczujda on 28/02/16.
//  Copyright © 2016 Pixelrockit. All rights reserved.
//

import Foundation

protocol CardProcessor {
    func findHand(cards: [Card]) -> [Card]
}