//: [Previous](@previous)

import Foundation

class BankAccount {
    var accountBalance: Float = 0 // 프로퍼티 또는 인스턴스 변수
    var accountNumber: Int = 0
    let fees: Float = 25.00 // 저장 프로퍼티, 일반적인 프로퍼티
    
    var balanceLessFees: Float { // 연산 프로퍼티, 값을 설정 또는 불러오는 과정에서 계산이나 로직에 따라 처리된 값
        get {
            return accountBalance - fees
        }
        
        set(newBalance) {
            accountBalance = newBalance - fees
        }
    }
    
    init(number: Int, balance: Float) { // 자바, 코틀린의 생성자 역할
        accountNumber = number
        accountBalance = balance
    }
    
    func displayBalance() { // 인스턴스 메서드 (인스턴스에 대한 작업)
        print("Number : \(accountNumber)")
        print("Current balance is : \(accountBalance)")
    }
    
    class func getMaxBalance() -> Float { // 타입 메서드 (클래스 레벨에서 동작), class 키워드를 추가해줌 (자바의 static 메서드 역할)
        return 100000.00
    }
    
    deinit { // 소멸자, 시스템에 의해 클래스 인스턴스가 없어지기 전에 호출됨
        <#statements#>
    }
}

var account1 = BankAccount(number: 12312312, balance: 400.54) // 초기화
let maxAllowed = BankAccount.getMaxBalance()

// ----

class MyClass {
    let title: String // 지연 저장 프로퍼티
    
    init(title: String) {
        self.title = title
    }
    
    // 조금 복잡하지만 클로저를 통해 초기화 가능, 이 경우 인스턴스가 생성될 때마다 초기화 작업 수행됨
//    var myProperty: String = {
//        var result = resourceIntensiveTask()
//        result = processData(data: result)
//        return result
//    }()
    
    // 코틀린과 동일하게 lazy로 선언하면 프로퍼티가 최초로 접근될 때만 초기화됨
//    lazy var myProperty: String = { ... }
}


//: [Next](@next)
