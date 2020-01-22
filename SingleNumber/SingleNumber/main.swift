//
//  main.swift
//  SingleNumber
//
//  Created by Keunna Lee on 2020/01/22.
//  Copyright © 2020 Keunna Lee. All rights reserved.
//

import Foundation

class Solution{
        func singleNumber(_ nums: [Int]) -> Int {
        let sortedNumbers = nums.sorted()
        for number in 0..<nums.count-1{
            if number == 0 && sortedNumbers[number] != sortedNumbers[number+1]{
                return sortedNumbers[number]
            }
            if number+1 < nums.count-1 && sortedNumbers[number] != sortedNumbers[number+1] && sortedNumbers[number+1] != sortedNumbers[number+2]{
                return sortedNumbers[number+1]
            }
            if number+1 == nums.count-1 {
                return sortedNumbers[number+1]
            }
        }
        return nums[0]
    }
}
