https://leetcode.com/problems/swap-nodes-in-pairs/

# 49. Group Anagrams

⭐️ Medium

* Result

 Runtime: 160 ms, faster than 75.18% of Swift online submissions for Group Anagrams.

 Memory Usage: 16.3 MB, less than 82.00% of Swift online submissions for Group Anagrams.

### Description

 Given an array of strings strs, group the anagrams together. You can return the answer in any order. An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

### Constraints:

-  1 <= strs.length <= 104
-  0 <= strs[i].length <= 100
-  strs[i] consists of lower-case English letters.

### Examples:

*  Example 1:

   Input: strs = ["eat","tea","tan","ate","nat","bat"]

   Output: [["bat"],["nat","tan"],["ate","eat","tea"]]

*  Example 2:

   Input: strs = [""]

   Output: [[""]]

*  Example 3:

   Input: strs = ["a"]

   Output: [["a"]]

 ### My Answer

```swift
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
// map: ["aet": ["eat", "tea", "ate"], "ant": ["tan", "nat"], "abt": ["bat"]]
```

### Problem Soloving

#### 🤔 Idea

Using Dictionary and `subscript(_:default:)` method

### Other Answers

 1. 

```swift
// Runtime: 216 ms, faster than 87.88% of Swift online submissions for Group Anagrams.
// Memory Usage: 22.8 MB, less than 10.60% of Swift online submissions for Group Anagrams.
class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var values = [String: Array<String>]()
        for str in strs {
            values[String(str.sorted()), default: Array<String>()].append(str)
        }
        
        var result = [[String]]()
        for (_, value) in values {
            result.append(value)
        }
        return result
    }
}
```

### ✍🏻

1. [ `subscript(_:default:)`](https://developer.apple.com/documentation/swift/dictionary/2894528-subscript)

```swift
var responseMessages = [200: "OK",
                        403: "Access forbidden",
                        404: "File not found",
                        500: "Internal server error"]

let httpResponseCodes = [200, 403, 301]
for code in httpResponseCodes {
    let message = responseMessages[code, default: "Unknown response"]
    print("Response \(code): \(message)")
}
// Prints "Response 200: OK"
// Prints "Response 403: Access forbidden"
// Prints "Response 301: Unknown response"
```
```swift
let message = "Hello, Elle!"
var letterCounts: [Character: Int] = [:]
for letter in message {
    letterCounts[letter, default: 0] += 1
}
// letterCounts == ["H": 1, "e": 2, "l": 4, "o": 1, ...]
```