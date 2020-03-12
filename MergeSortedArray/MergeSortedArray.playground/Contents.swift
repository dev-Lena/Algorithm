import UIKit

class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var temp = nums1
        var indexToRemove = m
        while temp.count != m {
            temp.remove(at: indexToRemove)
        }
        temp += nums2
        temp = temp.sorted()
        nums1 = temp
    }
}
