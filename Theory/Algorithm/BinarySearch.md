# Binary Search

이진 탐색 알고리즘(binary search algorithm)

### 특징
* BigO : O(log N)
* 정렬된 자료를 반으로 나누어 탐색하는 방법
* 오름차순으로 정렬된 리스트에서 특정한 값의 위치를 찾는 알고리즘.
* 처음 중간의 값을 임의의 값으로 선택해 그 값과 찾고자 하는 값의 크고 작음을 비교하는 방식
* 처음 선택한 중앙값이 만약 찾는 값보다 크면 그 값은 새로운 최고값이 되며, 작으면 그 값은 새로운 최하값이 됩니다 
* 이진트리, 바이너리서치는 코딩 인터뷰 단골문제
* 퍼포먼스가 아주 좋고 구현하는 중에 [dynamic programming](https://namu.wiki/w/%EB%8F%99%EC%A0%81%20%EA%B3%84%ED%9A%8D%EB%B2%95), recursion을 볼 수 있다.

### 장단점
* 단점: 오름차순으로 정렬된 리스트에만 사용할 수 있다는 점. 
 반드시 정렬된 상태에서 시작해야한다. 로그실행시간을 보장한다.
* 장점: 검색이 반복될 때마다 목표값을 찾으 확률은 두 배가 됨.

### 구현
```swift
// 추후 추가 예정입니다
```

### 참고
[강의노트 15-2. [탐색] 이진탐색(Binary Search) 알고리즘](https://wayhome25.github.io/cs/2017/04/15/cs-16/)