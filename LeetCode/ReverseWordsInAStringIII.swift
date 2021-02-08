
/*
 LeetCode
 557. Reverse Words in a String III (Easy)
 https://leetcode.com/problems/reverse-words-in-a-string-iii/
 
 Description:
 Given a string, you need to reverse the order of characters in each word within a sentence while still preserving whitespace and initial word order.
 
 Examples:
 
   Example 1:
   Input: "Let's take LeetCode contest"
   Output: "s'teL ekat edoCteeL tsetnoc"
 
 Note: In the string, each word is separated by single space and there will not be any extra space in the string.

 */

class Solution {
    func reverseWords(_ s: String) -> String {
        let separatedArray = s.components(separatedBy: " ")
        var reversedString = ""
        for index in 0..<separatedArray.count {
            reversedString += String(separatedArray[index].reversed())
            if index != separatedArray.count - 1 {
                
                reversedString += " "
            }
        }
        return reversedString
    }
}
