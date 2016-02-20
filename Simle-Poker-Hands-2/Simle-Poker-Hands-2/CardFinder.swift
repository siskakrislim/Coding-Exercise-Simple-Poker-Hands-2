//
//  CardFinder.swift
//  Simle-Poker-Hands-2
//
//  Created by Bartosz Oczujda on 16/02/16.
//  Copyright © 2016 Pixelrockit. All rights reserved.
//

import Foundation

protocol CardFinder {
    func find(cards:[String]) -> Bool
    var length:Int { get }
}