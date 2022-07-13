//: [Previous](@previous)

import Foundation

// 불투명 반환 타입
// 프로토콜에서 함수가 결과를 반환한다면 함수 선언부에 결과의 타입이 포함되어야 함

func doubleFunc1(value: Int) -> Int { // 특정 반환 타입 == 구체화된 타입 (concrete type)
    return value * 2
}

// 불투명 반환 유형을 사용하면 지정된 프로토콜을 따르는 모든 타입이 반환될 수 있게 함
// 불투명 반환 타입은 프로토콜 이름 앞에 some 키워드를 붙여 선언
func doubleFunc2(value: Int) -> some Equatable { // doubleFunc2() 함수가 Equatable 프로토콜을 따르는 모든 타입의 결과가 반환된다고 선언
    value * 2                               // 여기서 Equatable은 스위프트가 제공하는 표준 프로토콜
}

// doubleFunc2()와 doubleFunc3()는 서로 다른 구체화된 타입을 반환하지만 이들 타입은 Equatable 프로토콜을 따름
// 따라서 실제 반환 타입을 아는게 아닌 반환 타입의 자격에 대해 아는 것
func doubleFunc3(value: String) -> some Equatable {
    value + value
}

// 구체화된 타입을 감춤으로써 프로그래머는 특정 구체화된 타입을 반환하는 함수에 의존하지 않게 되거나 접근되지 않는 내부 객체에 접근하게 되는 위험이 사라짐
// API 개발자가 다른 프로토콜과 호환되는 타입을 반환하도록 하는 변경을 포함해 내부 구현체를 변경할 때 API를 사용하는 모든 코드의 의존성이 깨질까 염려 하지 않아도 됨
// 불투명 반환 타입은 SwiftUI API의 기본 토대로 SwiftUI로 앱을 개발할 때 널리 사용됨

//: [Next](@next)
