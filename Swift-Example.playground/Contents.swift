import UIKit

// 조건문 작성 형식

var isSuccessful = true

if (isSuccessful == true) { // isSuccessful != true
    print("성공 했습니다.")
} else {
    print("실패 했습니다.")
}

if isSuccessful == true { // isSuccessful != true
    print("성공 했습니다.")
} else {
    print("실패 했습니다.")
}

if isSuccessful { // !isSuccess
    print("성공 했습니다.")
} else {
    print("실패 했습니다.")
}
