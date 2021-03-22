/*
 LeetCode
 49. Group Anagrams
 https://leetcode.com/problems/group-anagrams/
 
 * 
 
 * Result
 Runtime: 160 ms, faster than 75.18% of Swift online submissions for Group Anagrams.
 Memory Usage: 16.3 MB, less than 82.00% of Swift online submissions for Group Anagrams.

* Problem Solving
 
 https://github.com/dev-Lena/algorithm/blob/master/LeetCode/GroupAnagramsProblemSolving.md
 
 
 * Description:
 
 Given an array of strings strs, group the anagrams together. You can return the answer in any order.

 An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.
 
 * Constraints:
 1 <= strs.length <= 104
 0 <= strs[i].length <= 100
 strs[i] consists of lower-case English letters.
 
 * Examples:
 
  Example 1:
 Input: strs = ["eat","tea","tan","ate","nat","bat"]
 Output: [["bat"],["nat","tan"],["ate","eat","tea"]]
 
  Example 2:
 Input: strs = [""]
 Output: [[""]]
 
  Example 3:
 Input: strs = ["a"]
 Output: [["a"]]

 */

class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        if strs.isEmpty { return [] }
        
        var map = [String: [String]]()
        for str in strs {
            let sorted = String(str.sorted())
            map[sorted, default: []] += [str]
        }
        return Array(map.values)
    }
}
