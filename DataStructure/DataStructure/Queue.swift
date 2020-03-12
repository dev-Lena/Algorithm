//
//  Queue.swift
//  DataStructure
//
//  Created by Keunna Lee on 2020/01/29.
//  Copyright © 2020 Keunna Lee. All rights reserved.
//

import Foundation

var operation = Operation()
var operationQueue = OperationQueue()
var blockOperation = BlockOperation()

//operationQueue.addOperation {
//    blockOperation
//}
//operationQueue.addOperation {
//    operation
//}
//
//print(operationQueue.operationCount)
//
////operation 과 blockOperation의 차이는?
//
//print(operationQueue)

// python Queue keyword ->put get size (remove)

// 일반적인 Queue 개념 구현하기 FIFO first in first out

// LIFOQueue(Last-In, First-Out) 개념 구현하기

// PriorityQueue() . 넣는 순서나 시간이 아니라 우선순위에 따라서 먼저 out

// 우선순위 높은게 숫자가 낮음

// 운영체제 이해하기

// 연습1: 리스트 변수로 큐를 다루는 enqueue, dequeue 기능 구현해보기

// 큐는 줄 스택은 책쌓기

// 스택이 데이터를 제한적으로 접근할 수 있는 구조 ( 한쪽 끝에서만 자료를 넣거나 뺄 수 있는 구조)면 큐는 양쪽에서 넣을 수 있는건가??

// operationQueue, DispatchQueue 공부하기
