https://leetcode.com/problems/rotate-image/

# 48. Rotate Image

⭐️ Medium

### Description:
 You are given an n x n 2D matrix representing an image, rotate the image by 90 degrees (clockwise).

 You have to rotate the image in-place, which means you have to modify the input 2D matrix directly. DO NOT allocate another 2D matrix and do the rotation.

### Constraints:

 matrix.length == n
 matrix[i].length == n
 1 <= n <= 20
 -1000 <= matrix[i][j] <= 1000

### Examples:

* Example 1:

 Input: matrix = [[1,2,3],[4,5,6],[7,8,9]]
 Output: [[7,4,1],[8,5,2],[9,6,3]]

* Example 2:

 Input: matrix = [[5,1,9,11],[2,4,8,10],[13,3,6,7],[15,14,12,16]]
 Output: [[15,13,2,5],[14,3,4,1],[12,6,8,9],[16,7,10,11]]

* Example 3:

 Input: matrix = [[1]]
 Output: [[1]]

 * Example 4:

 Input: matrix = [[1,2],[3,4]]
 Output: [[3,1],[4,2]]

 ### My Answer


```swift
class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        let outerArrayLength = matrix.count - 1
        
        // add value rotated by 90 degrees
        for innerIndex in 0 ... outerArrayLength {
            var temp: [Int] = []
            for outerIndex in stride(from: outerArrayLength, to: -1, by: -1) {
                temp.append(matrix[outerIndex][innerIndex])
            }
            matrix.append(temp)
        }
        
        // remove previous values
        for _ in 0..<(matrix.count / 2) {
            matrix.removeFirst()
        }
    }
}
```

### Problem Soloving

#### 🤔 The rules I found

<img src= "https://user-images.githubusercontent.com/52783516/110338313-32acb480-806a-11eb-8ab4-6c9bba1bd1f4.png" width ="70%;" />

At first, I focused on where to move each element. But when I wrote the code, it was the opposite. It is easy to implement only when I focus on which elements should be located in each index (location).

### ✍🏻

`stride(from:to:by:)` : Repeat operations are performed at intervals of **'by value'** from **'from value'** to **'to value'** ("less than")
`stride(from:through:by:)`: Repeat operations are performed at intervals of **'by value'** from **'from value'** to **'through value'** ("below")

The stride method was used to reverse loop from the length of the matrix array to zero.

Reference: [Stride](https://developer.apple.com/documentation/swift/memorylayout/2429192-stride), [stride(from:to:by:)](https://developer.apple.com/documentation/swift/1641347-stride), [stride(from:through:by:)](https://developer.apple.com/documentation/swift/1641185-stride), [Swift 문서, Strideable 프로토콜 및 stride 사용법](https://0urtrees.tistory.com/144)
