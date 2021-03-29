/*
 LeetCode
 605. Can Place Flowers
 https://leetcode.com/problems/can-place-flowers/
 
 * 
 
 * Result
 Runtime: 100 ms, faster than 79.27% of Swift online submissions for Can Place Flowers.
 Memory Usage: 14.5 MB, less than 34.15% of Swift online submissions for Can Place Flowers.

 
 * Description:
 
 You have a long flowerbed in which some of the plots are planted, and some are not. However, flowers cannot be planted in adjacent plots.

 Given an integer array flowerbed containing 0's and 1's, where 0 means empty and 1 means not empty, and an integer n, return if n new flowers can be planted in the flowerbed without violating the no-adjacent-flowers rule.
 
 * Constraints:
 1 <= flowerbed.length <= 2 * 104
 flowerbed[i] is 0 or 1.
 There are no two adjacent flowers in flowerbed.
 0 <= n <= flowerbed.length
 
 * Examples:
 
  Example 1:
 Input: flowerbed = [1,0,0,0,1], n = 1
 Output: true
 
  Example 2:
 Input: flowerbed = [1,0,0,0,1], n = 2
 Output: false
 
 */

class Solution {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        var a = flowerbed
        var spaces = 0
        
        for i in 0 ..< a.count{
            let leftEmpty = (i == 0 || a[i-1] == 0)
            let rightEmpty = (i == a.count - 1 || a[i+1] == 0)
            if a[i] == 0 && leftEmpty && rightEmpty{
                spaces += 1
                a[i] = 1
            }
        }
        
        return spaces >= n
    }
}
