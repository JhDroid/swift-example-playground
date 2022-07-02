//: [Previous](@previous)

import Foundation

// swift switch
let value = 4

switch value {
    case 0...1: // 범위 매칭
        print("zero or one")
        
    case 2, 3: // 구문 결합
        print("two, three")
        
    case 4 where value % 2 == 0: // where 구문 사용
        print("four")
        fallthrough // 예외상황 효과를 주며 실행 흐름이 그 다음의 case 구문으로 계속 진행
        
    default: // default에서 아무런 작업도 하지 않으면 break를 주로 추가해줌
        print("default")
}

//: [Next](@next)
