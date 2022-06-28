//: [Previous](@previous)

import Foundation
import UIKit
import PlaygroundSupport

let container = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
container.backgroundColor = UIColor.white

let square = UIView(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
square.backgroundColor = UIColor.red

container.addSubview(square)

UIView.animate(withDuration: 5.0, animations: {
    square.backgroundColor = UIColor.blue
    let rotation = CGAffineTransform(rotationAngle: 3.14)
    square.transform = rotation
})

// 애니메이션 동작을 보기 위해 라이브 뷰 기능을 이용해야함(PlaygroundSupport)
PlaygroundPage.current.liveView = container

//: [Next](@next)
