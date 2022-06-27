//: [Previous](@previous)

import Foundation

// enum 작성 방법

enum School {
    case elementary
    case middle
    case high
    // case elementary, middle, high
}

let mySchool = School.elementary
print("mySchool : \(mySchool)")

enum Grade : Int {
    case first = 1
    case second = 2
}

let myGrade = Grade.first
print("myGrade : \(myGrade)")

enum SchoolDetail {
    case elementary(name : String)
    case middle(name: String)
    
    func get() -> String {
        switch self {
        case .elementary(let name):
            return name
        case .middle(let name):
            return name
        }
    }
}

let myMiddleSchoolName = SchoolDetail.middle(name: "Duckhyun")
print("myMiddleSchoolName : \(myMiddleSchoolName)")
