### Algorithm - HackerRank

1. [zip(_:_:)](https://developer.apple.com/documentation/swift/1541125-zip)
: Creates a sequence of pairs built out of two underlying sequences.

```swift
let words = ["one", "two", "three", "four"]
let numbers = 1...4

for (word, number) in zip(words, numbers) {
    print("\(word): \(number)")
}
// Prints "one: 1"
// Prints "two: 2
// Prints "three: 3"
// Prints "four: 4"

let naturalNumbers = 1...Int.max
let zipped = Array(zip(words, naturalNumbers))
// zipped == [("one", 1), ("two", 2), ("three", 3), ("four", 4)]
```

2. [init(repeating:count:)](https://developer.apple.com/documentation/swift/array/1641692-init)
```swift
let fiveZs = Array(repeating: "Z", count: 5)
print(fiveZs)
// Prints "["Z", "Z", "Z", "Z", "Z"]"
```

3. [components(separatedBy:)](https://developer.apple.com/documentation/foundation/nsstring/1413214-components)
```swift
let str = "Andrew, Ben, John, Paul, Peter, Laura"
let array = str.components(separatedBy: ", ")
```