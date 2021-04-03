/*
 LeetCode
 20. Valid Parentheses
 https://leetcode.com/problems/valid-parentheses/
 
 * 
 
 * Result
 Runtime: 0 ms, faster than 100.00% of Swift online submissions for Valid Parentheses.
 Memory Usage: 14.5 MB, less than 60.24% of Swift online submissions for Valid Parentheses.

 * Description:
 
 Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

 An input string is valid if:

 Open brackets must be closed by the same type of brackets.
 Open brackets must be closed in the correct order.


 
 * Constraints:
 1 <= s.length <= 104
 s consists of parentheses only '()[]{}'.
 
 * Examples:
 
 Example 1:

 Input: s = "()"
 Output: true
 Example 2:

 Input: s = "()[]{}"
 Output: true
 Example 3:

 Input: s = "(]"
 Output: false
 Example 4:

 Input: s = "([)]"
 Output: false
 Example 5:

 Input: s = "{[]}"
 Output: true
 
 */

class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()
        let closingPairs: [Character:Character] = [ "{":"}", "[":"]", "(":")" ]
        let openBrackets = Set<Character>(closingPairs.keys)
        for char in s {
            if openBrackets.contains(char) {
                stack.append(char)
            } else {
                guard let last = stack.popLast() else { return false }
                if closingPairs[last] != char { return false }
            }
        }
        return stack.isEmpty
    }
}
