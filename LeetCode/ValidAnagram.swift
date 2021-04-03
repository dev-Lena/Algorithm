/*
 LeetCode
 242. Valid Anagram
 https://leetcode.com/problems/valid-anagram/
 
 * 
 
 * Result
 Runtime: 352 ms, faster than 8.55% of Swift online submissions for Valid Anagram.
 Memory Usage: 17.1 MB, less than 5.74% of Swift online submissions for Valid Anagram.

 * Description:
 Given two strings s and t, return true if t is an anagram of s, and false otherwise.


 
 * Constraints:
 1 <= s.length, t.length <= 5 * 104
 s and t consist of lowercase English letters.
 
 * Examples:
 
 Example 1:

 Input: s = "anagram", t = "nagaram"
 Output: true
 Example 2:

 Input: s = "rat", t = "car"
 Output: false
 
 */

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var a = Array(s).sorted(by: <), b = Array(t).sorted(by: <)
        return a == b
    }
}
