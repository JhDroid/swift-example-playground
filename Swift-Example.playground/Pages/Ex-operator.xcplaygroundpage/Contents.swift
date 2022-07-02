//: [Previous](@previous)

import Foundation

var x: Int = 2
var y: Int = 5

// 범위 연산자

// 닫힌 범위 연산자
// x 부터 y까지의 범위 모두 포함(x, y 포함, [2, 3, 4, 5])
x...y

// 반 개방 범위 연산자
// x부터 시작하는 모든 값을 포함하지만 y는 포함되지 않음 [2, 3, 4]
x..<y

// 단방향 범위 연산자
x...
...y

// ----

// 삼항 연산자 (조건문 ? 참 : 거짓)
print("Largest number is \(x > y ? x : y)")

// ----

//: [Next](@next)
