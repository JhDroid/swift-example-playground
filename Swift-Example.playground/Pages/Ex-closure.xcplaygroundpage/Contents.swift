//: [Previous](@previous)

import Foundation

// 클로저와 클로저 표현식

// 클로저 표현식은 독립적인 코드 블록
let sayHello = { print("Hello") } // 클로저 표현식 선언 후 sayHello 상우에 할당
sayHello() // 상수 참조를 통해 함수 호출

// 클로저 표현식은 매개변수를 받아 결괏값을 반환할 수 있음
// 함수와 비슷하지만 이름을 갖지 않고 괄호 안에 매개변수와 반환 타입을 작성함
// 보통 비동기 메서드 호출에 대한 완료 핸들러를 선언할 때 사용
let multipley = {(_ val1: Int, _ val2: Int) -> Int in // 코드의 시작을 가리키기 위해 'in' 키워드 사용
    return val1 * val2
}
let rseult = multipley(10, 20)

// ----

// 클로저는 함수나 클로저 표현식과 같은 독립적인 코드 블록과 코드 블록 주변에 있는 하나 이상의 변수가 결합된 것을 말함
func functionA() -> () -> Int {
    var counter = 0
    
    func functionB() -> Int { // functionB는 내부 영역 밖에 선언된 counter 변수에 의존
        return counter + 10  // functionB는 counter 변수를 잡고(captured)있다, 또는 가두고 있다(closed over)고 말할 수 있음
    }                       // 이를 전통적인 컴퓨터 공학 용어인 클로저로 간주
    
    return functionB
}

let myClosure = functionA()
let result = myClosure()

//: [Next](@next)
