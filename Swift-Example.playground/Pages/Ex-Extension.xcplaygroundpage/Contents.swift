//: [Previous](@previous)

import Foundation

// 익스텐션
// 클래스에 새로운 기능을 추가하는 방법
// 하위 클래스를 생성하거나 참조하지 않고 기존 클래스에 메소드, 초기화, 연산 프로퍼티와 서브스크립트 등의 기능을 추가할 수 있음

extension Double { // 표준 Double 클래스에 새로운 기능 추가
    var squared: Double {
        return self * self
    }
    
    var cubed: Double {
        return self * self * self
    }
}

let myDoubleValue: Double = 3.0
print(myDoubleValue.squared)
print(myDoubleValue.cubed)

// 값으로 바로 접근 가능
print(3.0.squared)
print(5.0.cubed)
//: [Next](@next)
