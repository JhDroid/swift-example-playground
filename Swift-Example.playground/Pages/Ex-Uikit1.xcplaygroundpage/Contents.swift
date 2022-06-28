//: [Previous](@previous)

import Foundation
import UIKit

// UIKit 연습.. - 각 라인에 대한 결과는 우측 QuickLook으로 확인 가능!
let myLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 50))

myLabel.backgroundColor = UIColor.red
myLabel.text = "Hello Swift"
myLabel.textAlignment = .center
myLabel.font = UIFont(name: "Georgia", size: 24)
myLabel

// resources 추가, UIImage로 이미지 노출 (QuickLook)
let image = UIImage(named: "waterfall")

//: [Next](@next)
