//: [Previous](@previous)

import Foundation

// 반복문 작성 형식

// for
for i in 0...5 {
    print("for index1 : \(i)")
}

// 5번, 0 ~ 4 (5보다 작은 수까지 반복), 즉 i는 처음에 0부터 시작
for i in 0..<5 {
    print("for index2 : \(i)")
}

// 0 ~ 4 중 짝수인 값만 출력 (0도 출력됨)
for i in 0..<5 where i % 2 == 0 {
    print("for index3 : \(i)")
}

var randomInts: [Int] = []

// 변수라고 생각하면 됨, i는 사용하지 않으면 언더바로 표시(와일드카드 패턴)
for _ in 0..<25 {
    let randomNumber = Int.random(in: 0...100)
    randomInts.append(randomNumber)
}
print("randomInts : \(randomInts)")

// -----

// forEach
var array : [Int] = [0, 1, 2, 3, 5, 6, 7, 8, 9 ,10]

for item in array {
    print("item : \(item)")
}

for item in array where item > 5 {
    print("5보다 큰수 : \(item)")
}

for item in array where item % 2 == 0 {
    print("짝수 : \(item)")
}
