https://level.goorm.io/exam/43064/binary-search/quiz/1

# Binary Search

⭐️ level 3 정답률 89.5%

### 요구사항

첫 줄에 배열의 크기 입력

두 번째 줄에 수를 오름차순으로 정렬해 입력

마지막 줄에 찾을 숫자 입력

출력 - 해당하는 숫자가 있으면 그 위치 (index 아님. 1부터) 없으면 "X" 출력

### 제한 조건

- v는 세 점의 좌표가 들어있는 2차원 배열입니다.
- v의 각 원소는 점의 좌표를 나타내며, 좌표는 [x축 좌표, y축 좌표] 순으로 주어집니다.
- 좌표값은 1 이상 10억 이하의 자연수입니다.
- 직사각형을 만드는 데 필요한 나머지 한 점의 좌표를 [x축 좌표, y축 좌표] 순으로 담아 return 해주세요.

### 입출력 예

| v    | return     |
| ----- | ------ |
| 5 -> 3 5 6 9 10 -> 9 | 4 |


### 내 풀이

```swift
var value = 0
var intArr = [Int]()
for i in 0..<3 {
    let input = readLine()!
    if i == 1 {
        intArr = input.split(separator: " ").map{ Int($0)! }
    }
    if i == 2 {
        value = Int(input)!
    }
}

for i in 0..<intArr.count {
    
    if intArr[i] == value {
        print(intArr.firstIndex(of: intArr[i])! + 1)
        break
    } else {
        if i == intArr.count - 1 {
            print("X")
        }
    
}
```

* 과정
1. 배열의 길이는 Swift에서 필요없으므로 입력값 중 두 번째 값과 세번째 값을 변수에 담음.
2. 배열에서 찾을 숫자와 같으면 해당 숫자의 index 에 1 더한 값을 출력함.
3. 없으면 "X" 출력

![image](https://user-images.githubusercontent.com/52783516/111643660-78c00000-8842-11eb-9e4d-77982b87e011.png)

### ✍🏻

[Binary Search](https://github.com/dev-Lena/algorithm/blob/master/Theory/Algorithm/BinarySearch.md)