//: [Previous](@previous)

import Foundation
import Darwin

// 함수 정리

// 기본 (리턴 없음)
func myFunction(message: String) {
    print("myMessage : \(message)")
}

myFunction(message: "Hello JhDroid!")

print("\n----------\n")

// 기본 (리턴 있음)
func mySumFunction(x: Int, y: Int) -> Int {
    print("sum : \(x) + \(y)")
    return x + y
}

let result = mySumFunction(x: 10, y: 20)
print("sum result : \(result)")

print("\n----------\n")

// 다중 값 반환
func multipleResultFunction(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    
    return (min: currentMin, max: currentMax)
}

let results = multipleResultFunction(array: [0, 5, 10, -1, 9, 11, -8, 7])
print("min : \(results.min), max : \(results.max)")

print("\n----------\n")

// 옵셔널 타입 반환
func optionalResultFunction(value: Int) -> Int? {
    let randomValue = Int.random(in: 0...1)
    
    if randomValue == 0 {
        return value
    } else {
        return nil
    }
}

if let optionalResult = optionalResultFunction(value: 10) {
    print("alive vluae : \(optionalResult)")
}

print("\n----------\n")

// ------
// 스위프트 함수는 기본적으로 내부 인자 이름과 외부 인자 이름을 다르게 가짐
func funcParameter(externalName internalName: String) {
    // externalName -> error
    internalName // -> success
}

// 내부 인자가 적절한 이름으로 사용되지 않을때 함수 호출 시 각 인자의 목저을 알기 쉽지 않음
// 외부 인자의 목적을 가르키기 위해 함수를 호출할 때 각 인자에 이름을 붙일 수 있음
func naming(name s1: String, age i1: Int) {
    // process..
}
naming(name: "JhDroid", age: 99) // 호출 시 각 인자의 목적을 알기 쉬워짐

// -----

// 가변 인자 (코틀린 vararg)
func varargArgument(names: String...) {
    for name in names {
        print("name : \(name)")
    }
}
varargArgument(names: "JhDroid", "Android", "iOS", "Studio", "XCode")

print("\n----------\n")

// 상수, 변수 인자
// 인자는 기본적으로 상수 (let이 생략되었다고 보면 됨)
// var을 명시적으로 추가해줘 변수로 변경할 수 있었는데 제거됐고 내부에서 var 변수를 생성해줘야함
func constArgument(x: Int) {
    // x = 10 -> error
    var x = x
    x = 20 // -> success
}


// 입출력 인자
// inout 키워드를 통해 인수로 넘긴 값을 함수에서 수정 후 원래 값을 '대체'하여 밖으로 넘겨짐
// 호출할 때는 앤드 기호(&)를 붙여서 호출해야함
var tempValue = "haha"
func inoutFunction(name: inout String) {
    let myMessage = "JhDrodi Swift ^^"
    name = myMessage
}

inoutFunction(name: &tempValue)
print("tempValue : \(tempValue)")
//: [Next](@next)
