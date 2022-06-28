//: [Previous](@previous)

import Foundation
import Darwin
import libkern

// ---- 정수 타입

// 각각 8~64비트 정수 타입
var i8: Int8
var i16: Int16
var i32: Int32
var i64: Int64

// 각각 8~64비트 부호없는 정수 타입
var ui8: UInt8
var ui16: UInt16
var ui32: UInt32
var ui64: UInt64

// 특정 크기의 데이터 타입을 사용하기 보단 Int, UInt를 사용 권장(알맞게 변경됨)
var i: Int
var ui: UInt


// ---- 부동소수점 타입

var f: Float // 최대 32비트
var d: Double // 최대 64비트


// ---- 불리언 타입
var b: Bool


// ---- 문자, 문자열 타입
var c1 = "c"
var cu = "\u{0058}" // 'X'

var s1 = "JhDroid"
var iValue = 10
var s2 = "String interpolation : \(iValue)" // 문자열 보간

var s3 = """
    kotlin이 생각남 ㅎ
"""

// ---- 특수 문자, 이스케이프 시퀀스
var newLine = "\n"
var backSlash = "\\"
var tab = "\t"


// ---- 튜플
var tupleData = 99
var tuple = (10, 8.19, "hi", tupleData)
print("tuple data : \(tuple.0), \(tuple.1), \(tuple.2), \(tuple.3)")


// --- 옵셔널 타입
var optional: Int? // '?'를 붙여 옵셔널로 변경
// var optional2 = nil // 옵셔널 타입이 아니라 에러
// var optional3: Int = nil // 옵셔널 타입이 아니라 에러

if optional != nil {
    // null이 아닐 때
} else {
    // nulld일 때
}



//: [Next](@next)
