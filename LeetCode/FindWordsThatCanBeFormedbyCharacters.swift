/*
 LeetCode
 1160. Find Words That Can Be Formed by Characters
 https://leetcode.com/problems/find-words-that-can-be-formed-by-characters/
 
 * Easy
 
 * Result
 Runtime: 380 ms, faster than 46.88% of Swift online submissions for Find Words That Can Be Formed by Characters.
 Memory Usage: 15 MB, less than 32.81% of Swift online submissions for Find Words That Can Be Formed by Characters.

 * Description:
 You are given an array of strings words and a string chars.

 A string is good if it can be formed by characters from chars (each character can only be used once).

 Return the sum of lengths of all good strings in words.

 
 * Example:
 Example 1:

 Input: words = ["cat","bt","hat","tree"], chars = "atach"
 Output: 6
 Explanation:
 The strings that can be formed are "cat" and "hat" so the answer is 3 + 3 = 6.
 Example 2:

 Input: words = ["hello","world","leetcode"], chars = "welldonehoneyr"
 Output: 10
 Explanation:
 The strings that can be formed are "hello" and "world" so the answer is 5 + 5 = 10.
 
 Note:

 1 <= words.length <= 1000
 1 <= words[i].length, chars.length <= 100
 All strings contain lowercase English letters only.
 
 */

class Solution {
    func countCharacters(_ words: [String], _ chars: String) -> Int {
        var result = 0
        
        Loop: for word in words {
            var characters = chars
            for char in word {
                guard let index = characters.firstIndex(of: char) else { continue Loop }
                characters.remove(at: index)
            }
            result += word.count
        }
        return result
    }
}
