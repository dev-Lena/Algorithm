/*
 LeetCode
 371. Sum of Two Integers (Medium)
 https://leetcode.com/problems/sum-of-two-integers/
 
 Description:
 Calculate the sum of two integers a and b, but you are not allowed to use the operator + and -.
 
 Examples:
 
  Example 1:

  Input: a = 1, b = 2
  Output: 3
 
  Example 2:

  Input: a = -2, b = 3
  Output: 1
 */

class Solution {
    func getSum(_ a: Int, _ b: Int) -> Int {
        let array: [Int] = [a,b]
        return array.reduce(0) { $0 + $1 }
    }
}
