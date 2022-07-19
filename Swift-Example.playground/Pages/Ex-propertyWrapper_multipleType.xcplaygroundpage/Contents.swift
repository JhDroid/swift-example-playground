//: [Previous](@previous)

import Foundation

// 프로퍼티 래퍼 여러 변수와 타입 지원
// 여러 변수는 init() 함수를 통해 지원이 가능
// 예제에서 여러 타입은 Foundation 프레임워크의 Comparable 프로토콜을 따르는 모든 타입과 작업이 가능하도록 구현(Comparable 프로토콜을 따르는 타입은 크기 비교가 가능)
@propertyWrapper
struct MinMaxVal<V: Comparable> {
    var value: V
    let max: V
    let min: V
    
    init(wrappedValue: V, min: V, max: V) { // init()을 통해 여러 변수 지원
        value = wrappedValue
        self.min = min
        self.max = max
    }
    
    var wrappedValue: V {
        get { return value }
        set {
            if newValue > max {
                value = max
            } else if newValue < min {
                value = min
            } else {
                value = newValue
            }
        }
    }
}

struct IntegerDemo {
    @MinMaxVal(min: 100, max: 200) var value: Int = 100 // Int 타입 지원
}

struct StringDemo {
    @MinMaxVal(min: "Apple", max: "Orange") var value: String = "" // String 타입 지원
}

var intDemo = IntegerDemo()
intDemo.value = 150
print(intDemo.value)

var strDemo = StringDemo()
strDemo.value = "Pear"
print(strDemo.value) // StringDemo에 설정한 알파벳 범위에 포함되지 않아 지정한 최댓값으로 대체됨 (Orange)


//: [Next](@next)
