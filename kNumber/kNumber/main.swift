//
//  main.swift
//  kNumber
//
//  Created by Keunna Lee on 2020/01/15.
//  Copyright © 2020 Keunna Lee. All rights reserved.
//

import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var answer = [Int]()
    
    for command in commands {
        let firstIndex = command[0]-1
        let lastIndex = command[1]-1
        let digitNumberToFind = command[2]-1
        var sortedArray = rearrangeArray(array, firstIndex, lastIndex)
        answer.append(sortedArray[digitNumberToFind])
    }
    
    return answer
}

func rearrangeArray(_ array:[Int], _ firstIndex: Int, _ lastIndex: Int) -> [Int] {
    var rearrangeDefaultArray = [Int]()
    
    for value in firstIndex ... lastIndex {
        rearrangeDefaultArray.append(array[value])
    }
    
    return rearrangeDefaultArray.sorted(by: <)
}

