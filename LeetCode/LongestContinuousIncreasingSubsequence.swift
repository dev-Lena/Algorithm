/*
 LeetCode
 674. Longest Continuous Increasing Subsequence
 https://leetcode.com/problems/longest-continuous-increasing-subsequence/
 
 * Easy
 
 * Result
 Runtime: 124 ms, faster than 6.67% of Swift online submissions for Longest Continuous Increasing Subsequence.
 Memory Usage: 14.2 MB, less than 62.22% of Swift online submissions for Longest Continuous Increasing Subsequence.

 * Description:
 Given an unsorted array of integers nums, return the length of the longest continuous increasing subsequence (i.e. subarray). The subsequence must be strictly increasing.

 A continuous increasing subsequence is defined by two indices l and r (l < r) such that it is [nums[l], nums[l + 1], ..., nums[r - 1], nums[r]] and for each l <= i < r, nums[i] < nums[i + 1].

 
 * Constraints:
 Example 1:

 Input: nums = [1,3,5,4,7]
 Output: 3
 Explanation: The longest continuous increasing subsequence is [1,3,5] with length 3.
 Even though [1,3,5,7] is an increasing subsequence, it is not continuous as elements 5 and 7 are separated by element 4.
 Example 2:

 Input: nums = [2,2,2,2,2]
 Output: 1
 Explanation: The longest continuous increasing subsequence is [2] with length 1. Note that it must be strictly
 increasing.
 
 */

class Solution {
    func findLengthOfLCIS(_ nums: [Int]) -> Int {
        var count = 0, previous = 0, longest = 0, nums = nums
        while !nums.isEmpty {
            var n = nums.removeFirst()
            if previous < n {
                count += 1
                previous = n
                longest = max(count, longest)
            } else {
                previous = n
                count = 1
            }
        }
        return longest
    }
}
