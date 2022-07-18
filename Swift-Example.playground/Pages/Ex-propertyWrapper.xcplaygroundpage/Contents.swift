//: [Previous](@previous)

import Foundation

// 프로퍼티 래퍼
// 프로퍼티에 값을 할당하거나 접근할 때 값을 저장하거나 읽어내기 전에 변환 작업이나 유효성 검사를 해야 할 경우가 종종 있음
// 이를 연산 프로퍼티를 만들어서 구현할 수 있는데 여러 클래스, 구조체에 생성한 연산 프로퍼티들이 유사한 구조를 갖는 경우가 발생함
// 스위프트 5.1 이전에는 이러한 로직을 각 클래스, 구현체에 붙여넣기하여 사용
// 스위프트 5.1에 프로퍼티 래퍼 기능을 도입하여 기본적으로 연산 프로퍼티의 기능을 개별 클래스와 구조체와 분리할 수 있게해 재사용할 수 있도록 함

struct Address {
    private var cityName: String
    
    var city: String {
        get { cityName }
        set { cityName = newValue.uppercased() } // 설정한 문자열을 대문자로 변환하는 프로퍼티를 래퍼로 생성해보자
    }
}

@propertyWrapper // 지시자
struct FixCase {
    private(set) var value: String = ""
    
    var wrappedValue: String { // 모든 프로퍼티 래퍼는 값을 변경하거나 유효성을 검사하는 게터와 세터 코드가 포함된 wrappedValue 프로퍼티를 가져야 함
        get { value }
        set { value = newValue.uppercased() }
    }
    
    init(wrappedValue initialValue: String) { // 초기화 메소드는 선택
        self.wrappedValue = initialValue
    }
}

// 사용
struct Concat {
    @FixCase var name: String
    @FixCase var city: String
    @FixCase var country: String
}

var concat = Concat(name: "JhDroid", city: "London", country: "United Kingdom")
print("\(concat.name), \(concat.city), \(concat.country)")

//: [Next](@next)
