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

Add Soon

### Other Answers

 1. 

```swift
// Add Soon
```

2. 
```swift
// Add Soon
```

### ✍🏻

Add Soon