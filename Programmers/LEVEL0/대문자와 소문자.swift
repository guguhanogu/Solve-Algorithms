// MARK: - 대문자와 소문자
/// 문자열 my_string이 매개변수로 주어질 때,
/// 대문자는 소문자로 소문자는 대문자로 변환한 문자열을 return하도록 solution 함수를 완성해주세요.

import Foundation

func solution(_ my_string:String) -> String {
    
    var stringArray: [String] = my_string.map { String($0) }
    
    for (index, string) in stringArray.enumerated() {
        if Character(string).isLowercase {
            stringArray[index] = stringArray[index].uppercased()
        } else {
            stringArray[index] = stringArray[index].lowercased()
        }
    }
    
    return stringArray.joined()
}