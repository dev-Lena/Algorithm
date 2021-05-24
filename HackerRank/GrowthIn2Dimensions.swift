/*
 HackerRank
 
 *
 * Description:
 ex: 입력값 ["1 4", "2 3", "4 1"]
 String의 첫번째 숫자가 row, 두번째 숫자가 column일 때 배열에서 주어지는 도형이 그려질 때마다 각 칸에 +1을 한다. 그렇다면 가장 높은 수가 있는 칸의 개수는?
 
 */

import Foundation

func countMax(upRight: [String]) -> Int {
    typealias rowAndColumn = (row: Int, column: Int)
    var size = 0, max = 0
    var rc = [rowAndColumn]()
    var temp = Array(upRight)
    for v in temp {
        if v.count == 1 {
            size = Int(v)!
        } else {
            let ch = v.components(separatedBy: " ")
            rc.append((Int(ch[0])!, Int(ch[1])!))
        }
    }
    while !rc.isEmpty {
        
        
        let value = rc.removeFirst()
        for i in 1...value.row {
            for j in 1...value.column {
                max += 1
                if max == rc.count {
                    return max
                }
            }
        }
    }
    return max
}

countMax(upRight: ["3","2 3", "3 7", "4 1"])
