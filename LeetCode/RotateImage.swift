/*
 LeetCode
 48. Rotate Image (Medium)
 https://leetcode.com/problems/rotate-image/
 
 * 
 
 * Result
 
 Runtime: 4 ms, faster than 100.00% of Swift online submissions for Rotate Image.
 Memory Usage: 14 MB, less than 66.54% of Swift online submissions for Rotate Image.
 
* Problem Solving
 
 https://github.com/dev-Lena/algorithm/blob/master/LeetCode/RotateImageProblemSolving.md
 
 
 * Description:
 You are given an n x n 2D matrix representing an image, rotate the image by 90 degrees (clockwise).

 You have to rotate the image in-place, which means you have to modify the input 2D matrix directly. DO NOT allocate another 2D matrix and do the rotation.
 
 * Constraints:

 matrix.length == n
 matrix[i].length == n
 1 <= n <= 20
 -1000 <= matrix[i][j] <= 1000
 
 * Examples:
 
  Example 1:

 Input: matrix = [[1,2,3],[4,5,6],[7,8,9]]
 Output: [[7,4,1],[8,5,2],[9,6,3]]
 
  Example 2:
 
 Input: matrix = [[5,1,9,11],[2,4,8,10],[13,3,6,7],[15,14,12,16]]
 Output: [[15,13,2,5],[14,3,4,1],[12,6,8,9],[16,7,10,11]]
 
  Example 3:
 
 Input: matrix = [[1]]
 Output: [[1]]
 
  Example 4:
 
 Input: matrix = [[1,2],[3,4]]
 Output: [[3,1],[4,2]]
 

 */

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

