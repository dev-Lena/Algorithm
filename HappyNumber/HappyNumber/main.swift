//
//  main.swift
//  HappyNumber
//
//  Created by Keunna Lee on 2020/01/22.
//  Copyright © 2020 Keunna Lee. All rights reserved.
//

import Foundation

class Solution {

    func split (_ n: Int) -> Double {
            var stringN = String(n)
            var splitedN = stringN.map({String($0)})
            return powDigits(splitedN.map{Double($0)!})
    }

    func powDigits(_ splitedN: [Double]) -> Double {
        var splitedN = splitedN
        var powedDigit = 0.0

        for digit in splitedN {
            powedDigit += pow(digit, 2.0)
        }
        var newSplited = self.split(Int(powedDigit))
        return newSplited
    }

    func isHappy(_ n: Int) -> Bool {
        return split(n) == 1.0
    }
}
