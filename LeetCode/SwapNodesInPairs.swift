/*
 LeetCode
 24. Swap Nodes in Pairs
 https://leetcode.com/problems/swap-nodes-in-pairs/
 
 * 
 
 * Result
 Runtime: 4 ms, faster than 92.55% of Swift online submissions for Swap Nodes in Pairs.
 Memory Usage: 13.7 MB, less than 90.98% of Swift online submissions for Swap Nodes in Pairs.

* Problem Solving
 
 https://github.com/dev-Lena/algorithm/blob/master/LeetCode/SwapNodesInPairsProblemSolving.md
 
 
 * Description:
 
 Given a linked list, swap every two adjacent nodes and return its head.
 
 * Constraints:
 The number of nodes in the list is in the range [0, 100].
 0 <= Node.val <= 100
  
 * Examples:
 
  Example 1:
 Input: head = [1,2,3,4]
 Output: [2,1,4,3]
 
  Example 2:
 Input: head = []
 Output: []
 
  Example 3:
 Input: head = [1]
 Output: [1]

 */

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */

class Solution {
    func swapPairs(_ head: ListNode?) -> ListNode? {
        guard let even = head?.next, let odd = head else { return head }
        odd.next = swapPairs(even.next)
        even.next = odd
        return even
    }
}
