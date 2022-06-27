//: [Previous](@previous)

import Foundation

// 옵셔널 변수 언랩핑(unwrapping)하는 방법

// 값이 비어있음(값을 설정하지 않은 상태)
var someVariable: Int?

// 값이 비어있아면 변수에 값 할당
if someVariable == nil {
    someVariable = 100
}

// 변수에 값이 비어있는지 확인
if let tempVariable = someVariable {
    print("값이 있다. tempVariable : \(tempVariable)")
} else {
    print("값이 없다.")
}

someVariable = nil

// someVarible에 값이 없다면 10을 기본값으로 설정
let defaultValue = someVariable ?? 10
print("check value : \(defaultValue)")

var emptyVariable: Int?

checkFunction(emptyVariable)
checkFunction(defaultValue)

func checkFunction(_ parameter: Int?) {
    print("call checkFunction()")
    
    // 값이 없으면 리턴
    guard let unWrappedParam = parameter else { return }
    print("unWrappedParam : \(unWrappedParam)")
}

// guard ??

/**
 조건을 걸러낼 때 사용, if문으로 대체가 가능하지만 가독성 문제로 guard를 사용
 
 문법
 guard "조건" else { "조건이 false일 때 실행될 구문" }
 
 예시
 guard someVariable != 0 else { return }
 print("someVariable : \(someVariable)")
 
 옵셔널 바인딩 예시
 guard let tempVariable = nullableParameter else { return }
 */

//: [Next](@next)
