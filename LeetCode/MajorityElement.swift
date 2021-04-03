/*
 LeetCode
 169. Majority Element
 https://leetcode.com/problems/majority-element/
 
 * 
 
 * Result
 Runtime: 188 ms, faster than 8.68% of Swift online submissions for Majority Element.
 Memory Usage: 15.8 MB, less than 59.38% of Swift online submissions for Majority Element.
 
 * Description:
 
 Given an array nums of size n, return the majority element.

 The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.


 
 * Constraints:
 n == nums.length
 1 <= n <= 5 * 104
 -231 <= nums[i] <= 231 - 1
 
 * Examples:
 
  Example 1:
 Input: nums = [3,2,3]
 Output: 3
 
  Example 2:
 Input: nums = [2,2,1,1,1,2,2]
 Output: 2
 
 */

class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var majority = 0, count = 0
        for v in Array(Set(nums)) {
            if count < nums.filter{$0 == v}.count {
                count = max(count, nums.filter{$0 == v}.count)
                majority = v
            }
        }
        return majority
    }
}
