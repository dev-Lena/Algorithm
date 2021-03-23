/*
 LeetCode
 189. Rotate Array
 https://leetcode.com/problems/rotate-array/
 
 * 
 
 * Result
 Runtime: 64 ms, faster than 25.46% of Swift online submissions for Rotate Array.
 Memory Usage: 15.7 MB, less than 14.39% of Swift online submissions for Rotate Array.
 
 * Description:
 
 Given an array, rotate the array to the right by k steps, where k is non-negative.
 
 * Constraints:
 1 <= nums.length <= 2 * 104
 -231 <= nums[i] <= 231 - 1
 0 <= k <= 105
 
 * Examples:
 
  Example 1:
 Input: nums = [1,2,3,4,5,6,7], k = 3
 Output: [5,6,7,1,2,3,4]
 Explanation:
 rotate 1 steps to the right: [7,1,2,3,4,5,6]
 rotate 2 steps to the right: [6,7,1,2,3,4,5]
 rotate 3 steps to the right: [5,6,7,1,2,3,4]
 
  Example 2:
 Input: nums = [-1,-100,3,99], k = 2
 Output: [3,99,-1,-100]
 Explanation:
 rotate 1 steps to the right: [99,-1,-100,3]
 rotate 2 steps to the right: [3,99,-1,-100]
 
 */

class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        for i in stride(from: 1, through: k, by: 1) {
            nums.insert(nums.removeLast(), at: 0)
        }
    }
}

/* if the following error occurred,
 Runtime Error Message: Fatal error: Can't form Range with upperBound < lowerBound
 See the relevant information here. ->  https://stackoverflow.com/a/36861439
 */
