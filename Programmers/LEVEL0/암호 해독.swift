// MARK: - 암호 해독
/// 군 전략가 머쓱이는 전쟁 중 적군이 다음과 같은 암호 체계를 사용한다는 것을 알아냈습니다.
/// 1. 암호화된 문자열 cipher를 주고받습니다.
/// 2. 그 문자열에서 code의 배수 번째 글자만 진짜 암호입니다.
/// 문자열 cipher와 정수 code가 매개변수로 주어질 때 
/// 해독된 암호 문자열을 return하도록 solution 함수를 완성해주세요.

import Foundation

func solution(_ cipher:String, _ code:Int) -> String {
    
    /// index를 활용하기 위해 기존 cipher의 맨 앞글자에 a를 붙여준 newCipher를 만든다.
    /// newCipher를 배열로 쪼갠다.
    let newCipher: String = "a" + cipher
    var cipherArray: [String] = newCipher.map { String($0) }
    var result: String = "" 
    
    for (index, str) in cipherArray.enumerated() {
        if index == 0 {
            continue
        } else if index % code == 0 {
            /// index값이 code의 배수일 경우,
            /// result에 문자를 추가한다.
            result += str
        }
    }
    
    return result
}