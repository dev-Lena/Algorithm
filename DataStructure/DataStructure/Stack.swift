//
//  Stack.swift
//  DataStructure
//
//  Created by Keunna Lee on 2020/01/29.
//  Copyright © 2020 Keunna Lee. All rights reserved.
//

import Foundation

// 가장 나중에 쌓은 데이터를 가장 먼저 빼낼 수 있는 데이터 구조 

// 컴퓨터 내부의 프로세스 구조의 함수 동작 방식

// push(데이터 넣기), pop(데이터르르 스택에서 꺼내기)

// 간단한 재귀함수로

// 함수 호출시 프로세스 실행 구조를 스택과 비교해서 이해 필요 !!
class Stack1{
    
    var stackList = [Any]()
    
    // 함수가 스택으로 쌓이는 과정을 이해하기 위한 예시
    func recursive(_ data: Int) {
    if data < 0{
    print("ended")
    }else{
    print(data)
    recursive(data-1)
    print("returnd \(data)")
    }
  }
    
    func popStack() {
        var data_stack = [1,2,3,4,5]
        print(data_stack.popLast())
        // popLast 값은 Optional(5)
        // 가장 마지막 값을꺼내옴
        print(data_stack[-1]) // python 에서는 -1 인덱스를 넣으면 마지막 인덱스를 가져오지만 swift에서는 index out of range 에러가 뜸.
    }
    
}

// 재귀함수를 호출한 후 남아있는 코드(print("retrun\(data)"))만 스택으로 쌓여서 재귀함수 코드를 실행 후 탈출한 후에 스택으로 쌓여있는 함수들을 LIFO 방식으로 실행함.

// 마지막에 쌓인 함수부터 삭제되고 그 다음 함수가 실행됨

// 함수 위에 함수가 호출되면 스택과 같은 형태로 쌓이고 제일 위에 쌓인 함수가 실행되고 마무리되면 다음(마지막 전에 쌓인) 함수가 호출된다.

// push (), pop() -> swift 에서는 popLast()

struct Stack<Element>{ //???
    
}

