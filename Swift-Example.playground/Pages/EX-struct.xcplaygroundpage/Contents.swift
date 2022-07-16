//: [Previous](@previous)

import Foundation

// 구조체
// struct 키워드를 사용하여 선언
// 클래스와 동일하게 확장될 수 있으며 프로토콜을 체택하거나 초기화를 가질 수 있음
struct SampleStruct {
    var name: String
    
    init(name: String){
        self.name = name
    }
}

class SampleClass {
    var name: String
    
    init(name: String){
        self.name = name
    }
}

let sampleStruct = SampleStruct(name: "struct") // 값 타입 - 복사본은 각자의 데이터를 가지게 됨
let sampleClass = SampleClass(name: "class") // 참조 타입 - 참조체가 변경되면 원본 인스턴스의 데이터도 변경됨

var copyStruct = sampleStruct
copyStruct.name = "copy struct"
print("\(sampleStruct.name)") // struct
print("\(copyStruct.name)") // copy struct

var copyClass = sampleClass
copyClass.name = "copy class"
print("\(sampleClass.name)") // copy class
print("\(copyClass.name)") // copy class

// 일반적으로 구조체가 클래스보다 효율적이고 멀티 스레드 코드를 사용하는 데 더 안정적이기 떄문에 가능하면 구조체를 권장
// 상소이 필요하거나 데이터가 캡슐화된 하나의 인스턴스가 필요할 때는 클래스를 사용해야 하면 인스턴스가 소멸될 때 리소스를 확보하기 위한 적입이 필요할 때도 클래스 사용

//: [Next](@next)
