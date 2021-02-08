/*
 LeetCode
 5. Longest Palindromic Substring (Medium)
 https://leetcode.com/problems/longest-palindromic-substring/
 
 Description:
 Given a string s, return the longest palindromic substring in s.
 
 Examples:
 
   Example 1:
   Input: s = "babad"
   Output: "bab"
   Note: "aba" is also a valid answer.
 
   Example 2:

   Input: s = "cbbd"
   Output: "bb"
   Example 3:

   Input: s = "a"
   Output: "a"
   Example 4:

   Input: s = "ac"
   Output: "a"
 
 Constraints:

 1 <= s.length <= 1000
 s consist of only digits and English letters (lower-case and/or upper-case),
 
 */

class Solution {
    func longestPalindrome(_ s: String) -> String {
        guard s.count > 1 else {
            return s
        }
        
        let sChars = Array(s)
        var maxLength = 0, start = 0
        
        for index in 0..<sChars.count {
            searchPalindrome(sChars, index, index, &start, &maxLength)
            searchPalindrome(sChars, index, index + 1, &start, &maxLength)
        }
        
        return String(sChars[start..<start + maxLength])
    }
    
    private func searchPalindrome(_ characters: [Character],
                                  _ left: Int, _ right: Int,
                                  _ start: inout Int, _ maxLength: inout Int) {
        var left = left, right = right
        while left >= 0 && right < characters.count
        && characters[left] == characters[right] {
            left -= 1
            right += 1
        }
        
        if maxLength < right - left - 1 {
            start = left + 1
            maxLength = right - left - 1
        }
    }
}
