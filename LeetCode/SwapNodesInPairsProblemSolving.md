https://leetcode.com/problems/swap-nodes-in-pairs/

# 24. Swap Nodes in Pairs

⭐️ Medium

* Result

 Runtime: 4 ms, faster than 92.55% of Swift online submissions for Swap Nodes in Pairs.

Memory Usage: 13.7 MB, less than 90.98% of Swift online submissions for Swap Nodes in Pairs.

### Description

Given a linked list, swap every two adjacent nodes and return its head.

### Constraints:

- The number of nodes in the list is in the range `[0, 100]`.
- `0 <= Node.val <= 100`

### Examples:

* Example 1:
Input: head = [1,2,3,4]
Output: [2,1,4,3]

* Example 2:
Input: head = []
Output: []

* Example 3:
Input: head = [1]
Output: [1]

 ### My Answer

```swift
// given ListNode
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

// my solution
class Solution {
    func swapPairs(_ head: ListNode?) -> ListNode? {
        // variable name: when address of nodes start from 1, and have their address in ascending order. even = evenAddressNode, odd = oddAddressNode
        guard let even = head?.next, let odd = head else { return head }
        odd.next = swapPairs(even.next)
        even.next = odd
        
        // after all nodes are swaped, the last node address is even.
        return even
    }
}
```

### Problem Soloving

#### 🤔 Idea

<img src="https://user-images.githubusercontent.com/52783516/111783707-d49b8f00-88fd-11eb-9d53-e88b89649bbe.png" alt="image" width="70%;" />

(In the image, temp == even and node == odd. )

Given a linked list, swap every two adjacent nodes and return its head. You may not modify the values in the list’s nodes, only nodes itself may be changed.([reference](https://davidwho.me/%E7%AE%97%E6%B3%95/2019/08/06/Swift-LeetCode%E5%AD%A6%E4%B9%A0%E7%AC%94%E8%AE%B0(24)-Swap-Nodes-in-Pairs/))

1. For a given `ListNode`, each node knows its own value and knows its next node. (or the absence of the next node)
2. When next node is 'nil', then it is the last node.
3. When counting the order from 1(not from 0), swap nodes in odd order and nodes in even order (1<->2, 3<->4)

### Other Answers

 1. Easy to understand - recursion

```swift
func swapPairs(head: ListNode?) -> ListNode? {
        guard let headNode = head where headNode.next != nil else {
            return head
        }

        let secondNode = headNode.next
        let thirdNode = secondNode?.next

        secondNode?.next = headNode
        headNode.next = self.swapPairs(thirdNode)

        return secondNode
    }
```

2. Easy to understand - while loop

```swift
// https://nadarm.tistory.com/66?category=783844
class Solution {
    func swapPairs(_ head: ListNode?) -> ListNode? {
        let head = ListNode(0, head)
        var prev: ListNode = head
        var curr: ListNode? = head.next
        while curr?.next != nil {
            prev.next = curr!.next
            curr!.next = curr!.next!.next
            prev.next!.next = curr!
            prev = curr!
            curr = curr!.next
        }
        return head.next
    }
}
```

3. Inout
```swift
func swapPairs(_ head: ListNode?) -> ListNode? {
	guard let node = head, let next = head?.next else { return head }
	swap(&node.val, &next.val)
	swapPairs(next.next)
	return head
}
```

### ✍🏻

1. [Singly Linked List](https://www.geeksforgeeks.org/linked-list-set-1-introduction/)

