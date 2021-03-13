https://leetcode.com/problems/container-with-most-water/

# 11. Container With Most Water

⭐️ Medium

* Result

 Runtime: 660 ms, faster than 5.78% of Swift online submissions for Container With Most Water.

 Memory Usage: 18.5 MB, less than 12.43% of Swift online submissions for Container With Most Water.

### Description

Given `n` non-negative integers `a1, a2, ..., an` , where each represents a point at coordinate `(i, ai)`. `n` vertical lines are drawn such that the two endpoints of the line `i` is at `(i, ai)` and `(i, 0)`. Find two lines, which, together with the x-axis forms a container, such that the container contains the most water.

**Notice** that you may not slant the container.

### Constraints:

- `n == height.length`
- `2 <= n <= 105`
- `0 <= height[i] <= 104`

### Examples:

* Example 1:

  <img src="https://s3-lc-upload.s3.amazonaws.com/uploads/2018/07/17/question_11.jpg" alt="img" width="70%;" />

  Input: height = [1,8,6,2,5,4,8,3,7]
  Output: 49
  Explanation: The above vertical lines are represented by array [1,8,6,2,5,4,8,3,7]. In this case, the max area of water (blue section) the container can contain is 49.

* Example 2:
Input: height = [1,1]
Output: 1

* Example 3:
Input: height = [4,3,2,1,4]
Output: 16

* Example 4:
Input: height = [1,2,1]
Output: 2

 ### My Answer

```swift
class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var left = 0, right = height.count - 1, area = 0
        
        while left < right {
            
            let high = min(height[left], height[right]), width = right - left, newArea = high * width
            
            area = area < newArea ? newArea : area
            
            if height[right] > height[left] {
                left += 1
            } else {
                right -= 1
            }
        }
        return area
    }
}
```

### Problem Soloving

#### 🤔 Idea

1. **Using two point**
   **left**: from first index(0) of given Int array `height` in regular order
   **right**: from last index(height.count - 1) of given Int array `height` in reverse order
   
   **Using these two points, starting from both ends and narrowing towards the center, the widest area can be considered to compare the maximum width**
   
   
2. **Rectangular area**
   `Width * height = (right - left) * min(height[right], height[left])`
3. **while loop**
   Condition: `left < right`
4. **Save max area in `area` variable**. Initialize to 0.
5. **In while loop**(exit loop when left is not less than right),
   a. calculate the area of a rectangle
   b. compared to the previous `area` value, save larger value in `area` variable 
   c. move pointers
     if the value of `height[right]` is greater than the one of height[left], add 1 to left pointer (move to next index),
   else subtract 1 from right pointer (move to previous index)



#### 🤔 The idea that I misunderstood

```swift
class Solution {
    func maxArea(_ height: [Int]) -> Int { 
        let temp = height.enumerated().map{($0.element, $0.offset)}.sorted(by: {$0.0 > $1.0})
        return temp[1].0 * (temp[1].1 - temp[0].1)
    }
}
```

This code sorts values in descending order (from high one) and then determines the area based on the value in the 1 index(second value in sorted array).

If I do it this way, the problem is,

It goes around a nested loop, which means time complexity is **O(n^2)**. Besides, the maximum length of given array is  10 to the power of 5.

The maximum area doesn't need only high height, but also wide width. However, it is difficult to find the area by considering the wide width with the code above.

### Other Answers

 1. Using `max()` to save larger value in `area` variable.

```swift
// 128 ms submission

class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var maxArea = 0
        var l = 0
        var r = height.count - 1
        while l < r {
            maxArea = max(maxArea, min(height[l], height[r]) * (r - l))
            if height[l] < height[r] {
                l += 1
            } else {
                r -= 1
            }
        }
        return maxArea
    }
```

2. one more case: in case of left and right are the same.
```swift
// 136 ms submission
class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var l = 0
        var r = height.count - 1
        var maxV = (r - l) * min(height[l], height[r])
        while l < r {
            if height[l] < height[r] {
                l += 1
            } else if height[l] > height[r] {
                r -= 1
            } else {
                l += 1
                r -= 1
            }
            maxV = max(maxV, (r - l) * min(height[l], height[r]))
        }
        return maxV
    }
}
```

### ✍🏻

1. [`min()`](https://developer.apple.com/documentation/swift/array/1687893-min)
   : Returns the minimum element in the sequence.
   The sequence’s minimum element. If the sequence has no elements, returns `nil`.

   ```swift
   let heights = [67.5, 65.7, 64.3, 61.1, 58.5, 60.3, 64.9]
   let lowestHeight = heights.min()
   print(lowestHeight)
   // Prints "Optional(58.5)"
   ```

   Complexity: O(*n*), where *n* is the length of the sequence.

2. [`max()`](https://developer.apple.com/documentation/swift/array/1688806-max)
   : Returns the maximum element in the sequence.
   The sequence’s maximum element. If the sequence has no elements, returns `nil`.

   ```swift
   let heights = [67.5, 65.7, 64.3, 61.1, 58.5, 60.3, 64.9]
   let greatestHeight = heights.max()
   print(greatestHeight)
   // Prints "Optional(67.5)"
   ```

   Complexity: O(*n*), where *n* is the length of the sequence.

