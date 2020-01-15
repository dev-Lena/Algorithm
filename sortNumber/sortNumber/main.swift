//
//  main.swift
//  sortNumber
//
//  Created by Keunna Lee on 2020/01/15.
//  Copyright © 2020 Keunna Lee. All rights reserved.
//

import Foundation

class SortNumber{
    
    func sortNumber() -> [Int] {
        quickSort(input())
    }
    
    func input() -> [Int]{
        var inputNumbersArray = [Int]()
        let totalCount = Int(readLine()!)!
        
        for _ in 1...totalCount {
            let inputNumber = Int(readLine()!)!
            inputNumbersArray.append(inputNumber)
        }
        return inputNumbersArray
    }

    func quickSort(_ array: [Int]) -> [Int]{
        let inputNumbersArray = input()
            
            if inputNumbersArray.count < 2 {
                return inputNumbersArray
            } else {
                let pivot = inputNumbersArray[0]
                let less = inputNumbersArray.filter { $0 < pivot }
                let greater = inputNumbersArray.filter { $0 > pivot}
                return quickSort(less) + [pivot] + quickSort(greater)
            }
        }
    }
