//
//  main.swift
//  SingleNumber
//
//  Created by Keunna Lee on 2020/01/22.
//  Copyright © 2020 Keunna Lee. All rights reserved.
//

import Foundation

class Solution{
    
    func singleNumber(_ nums: [Int]) -> Int? {
        var numbers = nums
        let sortedNumbers = sort(nums)
        return reduceDuplicates(sortedNumbers)
    }
    
    func sort(_ nums: [Int]) -> [Int] {
        var nums = nums
        return nums.sorted()
    }
  
    func reduceDuplicates(_ nums: [Int]) -> Int{
        var numbers = nums
        
        
        for number in 0...numbers.count-1 {
            if number+1 <= numbers.count-1  {
            if numbers[number] % numbers[number+1] == 0 {
            numbers.remove(at: number)
            numbers.remove(at: number+1)
            
                }
            }
        }
        return numbers[0]
    }
}
