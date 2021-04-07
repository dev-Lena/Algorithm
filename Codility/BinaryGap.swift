/*
 Codility
 BinaryGap (Lession 1. Iterations)
 https://app.codility.com/c/run/trainingTGUVR7-FPJ/
 
 * 
 
 * Result
 Compilation successful.

 Example test:   1041
 OK

 Example test:   15
 OK

 Example test:   32
 OK
 
 * Description:
 
 A binary gap within a positive integer N is any maximal sequence of consecutive zeros that is surrounded by ones at both ends in the binary representation of N.

 For example, number 9 has binary representation 1001 and contains a binary gap of length 2. The number 529 has binary representation 1000010001 and contains two binary gaps: one of length 4 and one of length 3. The number 20 has binary representation 10100 and contains one binary gap of length 1. The number 15 has binary representation 1111 and has no binary gaps. The number 32 has binary representation 100000 and has no binary gaps.
 
 */

import Foundation
import Glibc

public func solution(_ N : Int) -> Int {
    var str = Array(String(N, radix: 2))
    var count = 0, next = 0, longest = 0, current = 0
    for i in 0..<str.count {
        if i + 1 < str.count {
            current = Int(String(str[i]))!
            next = Int(String(str[i + 1]))!
        }
        if current != 1  {
            count += 1
            if next == 1 {
                longest = max(count, longest)
            }
            
        } else {
            count = 0
        }
    }
    
    return longest
}
