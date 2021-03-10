https://leetcode.com/problems/reverse-words-in-a-string/

# 151. Reverse Words in a String 

⭐️ Medium

* Result
 
 Runtime: 72 ms, faster than 19.72% of Swift online submissions for Reverse Words in a String.
 Memory Usage: 15.9 MB, less than 10.56% of Swift online submissions for Reverse Words in a String.

### Description:
 Given an input string `s`, reverse the order of the **words**.

A **word** is defined as a sequence of non-space characters. The **words** in `s` will be separated by at least one space.

Return *a string of the words in reverse order concatenated by a single space.*

**Note** that `s` may contain leading or trailing spaces or multiple spaces between two words. The returned string should only have a single space separating the words. Do not include any extra spaces.

### Constraints:

1 <= s.length <= 104

 s contains English letters (upper-case and lower-case), digits, and spaces ' '.

 There is at least one word in s.

### Examples:

* Example 1:
 Input: s = "the sky is blue"
 Output: "blue is sky the"

* Example 2:
 Input: s = " hello world "
 Output: "world hello"
 Explanation: Your reversed string should not contain leading or trailing spaces.

* Example 3:
 Input: s = "a good  example"
 Output: "example good a"
 Explanation: You need to reduce multiple spaces between two words to a single space in the reversed string.

* Example 4:
 Input: s = " Bob  Loves Alice  "
 Output: "Alice Loves Bob"

* Example 5:
 Input: s = "Alice does not even like bob"
 Output: "bob like even not does Alice"

 ### My Answer
 
```swift
import Foundation

class Solution {
    func reverseWords(_ s: String) -> String {
        
        return s.components(separatedBy:" ").filter{$0 != ""}.map{$0.trimmingCharacters(in: .whitespaces)}.reversed().joined(separator: " ")
    }
}
```

### Problem Soloving

* Idea

1. s를 components(separatedBy:)를 이용해서 whitespace" "를 기준으로 나눈다(쪼갠다)
2. 1의 결과 배열에서 filter함수로 element가 ""이 아닌 element만 골라낸다
3. 그 후 trimmingCharacters(in: .whitespaces) 메서드 사용해서 2의 결과 배열의 각 element의 whitespace 없앤다. 이 과정 이후 string 배열의 원소들에 포함되어있던 공백(whitespace)은 모두 없어진다
4. 3의 결과 배열을 reversed()로 뒤집는다
5. 그 후 4의 결과 배열을 joined(separator: " ")을 사용하여 각 element를 하나의 string으로 합칠 때 " "(한 칸의 공백)을 사이에 넣고 join 시킨다. 그러면 하나의 string 값으로 합쳐진 각 단어들 사이에 " " 한 칸의 공백이 포함되어 있다. 

1. Divide 's' by whitespace(" ") using `components (separatedBy:)`.
2. And then use `filter()` function to filter only the elements that is not " ".
3. Then use `trimmingCharacters(in: .whitespaces)` function to remove the whitespaces of each element in the array. After that, all the whitespaces contained in the elements(each word) of the string array are lost.
4. Use `reversed()` to reverse the arrangement.
5. Then use `joined(separator: " ")` to combine each element into one string. Put " "(whitespace) between each element and join them. 

### Other Answers

 1. compatMap

```swift
//  O(N) One-Liner 85% Beatings 
class Solution {
    func reverseWords(_ s: String) -> String {
        return s.components(separatedBy: " ").compactMap { $0.count > 0 ? $0 : nil }.reversed().joined(separator: " ")
    }
}
```

2. using split and not using filter or trimmingCharacters function
```swift
// Swift 32ms, 100%
class Solution {
    func reverseWords(_ s: String) -> String {
        return s.split(separator: " ").reversed().joined(separator: " ")
    }
}
```

### ✍🏻

1. [compactMap(_:)](https://developer.apple.com/documentation/swift/sequence/2950916-compactmap)
: Returns an array containing the non-nil results of calling the given transformation with each element of this sequence.
**Discussion**: Use this method to receive an array of non-optional values when your transformation produces an optional value.

Complexity: O(m + n), where n is the length of this sequence and m is the length of the result.

```swift
let possibleNumbers = ["1", "2", "three", "///4///", "5"]

let mapped: [Int?] = possibleNumbers.map { str in Int(str) }
// [1, 2, nil, nil, 5]

let compactMapped: [Int] = possibleNumbers.compactMap { str in Int(str) }
// [1, 2, 5]
```
note the difference in the result of using **map** and **compactMap** with a transformation that **returns an optional Int value**.

return value: A new string made by removing from both ends of the receiver characters contained in set. If the receiver is composed entirely of characters from set, the empty string is returned.

2. [trimmingCharacters(in:)](https://developer.apple.com/documentation/foundation/nsstring/1415462-trimmingcharacters)
: Returns a new string made by removing from both ends of the receiver characters contained in a given character set.
**Discussion**: Use whitespaces or whitespacesAndNewlines to remove whitespace around strings.

3. [split(separator:) vs components(seperatedBy:)](https://stackoverflow.com/questions/46344649/componentseparatedby-versus-splitseparator

Performance aside, there is an important difference between split(separator:) and components(separatedBy:) in how they treat empty subsequences.

They will produce different results if your input contains a trailing whitespace:
```swift
    let str = "My name is Sudhir " // trailing space

    str.split(separator: " ")
    // ["My", "name", "is", "Sudhir"]

    str.components(separatedBy: " ")
    // ["My", "name", "is", "Sudhir", ""] ← Additional empty string
```
To have both produce the same result, use the omittingEmptySubsequences:false argument (which defaults to true):
```swift
    // To get the same behavior:
    str.split(separator: " ", omittingEmptySubsequences: false)
    // ["My", "name", "is", "Sudhir", ""])
```
there is speed issue.
maybe split's performance is faster. 
read the link above(title of 3) for more information.