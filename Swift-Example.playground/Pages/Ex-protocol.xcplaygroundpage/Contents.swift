//: [Previous](@previous)

import Foundation

// 프로토콜
// 클래스가 충족해야 하는 최소한의 요구사항을 정의하는 규칙들의 집합을 의미
// protocol 키워드를 이용해 선언하며 클래스가 반드시 포함해야하는 메서드와 프로퍼티를 정의 (인터페이스와 비슷)

protocol MessageBuilder {
    var name: String { get }
    func buildMessage() -> String
}

class MyClass: MessageBuilder {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func buildMessage() -> String {
        "Hello~ \(name)!"
    }
}

let myClass = MyClass(name: "JhDroid")
print("myClass message : \(myClass.buildMessage())")

//: [Next](@next)
