//: [Previous](@previous)

import Foundation

// 반복문 작성 형식

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
