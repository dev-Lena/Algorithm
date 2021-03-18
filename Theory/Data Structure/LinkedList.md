# LinkedList in Swift

``` swift
class LinkedList<T> {
    private var head: Node<String>?
    private var tail: Node<String>?
    
    var isEmpty: Bool {
        return head == nil
    }
    
    var first: Node<String>? {
        return head
    }
    
    var last: Node<String>? {
        return tail
    }
    
    func append(value: String) {
        let new = Node(value: value)
        if let tailNode = tail {
            new.previous = tailNode
            tailNode.next = new
        } 
        else {
            head = new
        }
        tail = new
    }
    
    func insertNodeAt(index: Int) -> Node<String>? {
        if index >= 0 {
            var node = head
            var i = index
            while node != nil {
                if i == 0 { return node }
                i -= 1
                node = node!.next
            }
        }
        return nil
    }
    func removeAll() {
        head = nil
        tail = nil
    }
    func remove(node: Node<String>) -> String {
        let prev = node.previous
        let next = node.next
        
        if let prev = prev {
            prev.next = next 
        } else { 
            head = next 
        }
        next?.previous = prev 
        
        if next == nil { 
            tail = prev
        }
        
        node.previous = nil 
        node.next = nil
        
        return node.value
    }
    
}

class Node<T> {
    var value: T
    var next: Node<T>?
    weak var previous: Node<T>?
    
    init(value: T) {
        self.value = value
    }
}

```



add explanation later