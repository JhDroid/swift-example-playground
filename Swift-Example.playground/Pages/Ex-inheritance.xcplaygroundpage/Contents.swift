//: [Previous](@previous)

import Foundation

// 상속
// 스위프트의 하위 클래스는 반드시 단 한 개의 부모 클래스만 둘 수 있다. (이를 단일 상속이라고 함)

class BankAccount {
    var accountBalance: Float = 0
    var accountNumber: Int = 0
    
    init(number: Int, balance: Float) {
        accountNumber = number
        accountBalance = balance
    }
    
    func displayBalance() { // 인스턴스 메서드 (인스턴스에 대한 작업)
        print("Number : \(accountNumber)")
        print("Current balance is : \(accountBalance)")
    }
}

class SavingsAccount: BankAccount {
    var interestRate: Float = 0.0
    
    init(number: Int, balance: Float, rate: Float) {
        interestRate = rate
        super.init(number: number, balance: balance) // 부모 클래스의 init 함수를 모든 변수 초기화
    }
    
    func calculateInterest() -> Float { // 하위 클래스 기능 확장
        return interestRate * accountBalance
    }
    
    override func displayBalance() { // 오버라이딩
//        print("Number : \(accountNumber)")
//        print("Current balance is : \(accountBalance)")
        super.displayBalance() // 상위 클래스의 메소드를 호출하면서 코드 중복 제거
        print("Prevailing interest rate is : \(interestRate)")
    }
}

let savingsAccount = SavingsAccount(number: 12345, balance: 600.00, rate: 0.07)
print(savingsAccount.calculateInterest())
savingsAccount.displayBalance()

//: [Next](@next)
