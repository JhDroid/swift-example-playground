//: [Previous](@previous)

import Foundation
import UIKit

// 캐스팅에는 업캐스팅과 다운캐스팅이 있음
// 업캐스팅 : 특정 클래스의 상퀴 클래스들 중의 하나로 변형되는 것, '보장된 변환'이라고도 함
let myBtn = UIButton()
let upCast = myBtn as UIControl // as 키워드를 통해 업캐스팅 (UIControl은 UIButton의 상위 클래스)

// 다운캐스팅 : 어떤 클래스에서 다른 클래스로 변환하는 것, '강제 변화'이라고도 함
let myScrollView = UIScrollView()
let downCast = myScrollView as! UITextView // as! 키워드를 통해 다운캐스팅 (UITextView는 UIScrollView의 하위 클래스)

// 옵셔널 바인딩 사용
if let optionalBindingCast = myScrollView as? UITextView { // as?를 사용한 옵셔널 바인딩
    // 캐스팅 성공
} else {
    // 캐스팅 실패
}

// 타입 검사
if downCast is UIScrollView {
    // downCast는 UIScrollView의 인스턴스
}

//: [Next](@next)
