// MARK: - 중복된 문자 제거
/// 문자열 my_string이 매개변수로 주어집니다.
/// my_string에서 중복된 문자를 제거하고 
/// 하나의 문자만 남긴 문자열을 return하도록 solution 함수를 완성해주세요.

import Foundation

func solution(_ my_string:String) -> String {
    /// my_string을 배열로 쪼갠다.
    let StringArray: [String] = my_string.map { String($0) }
    /// 중복된 문자를 제거하고 하나의 문자만 남겨줄 문자열
    var uniqueString: String = ""
    
    for str in StringArray {
        /// uniqueString에 str이 포함되어 있다면 다음 탐색으로 넘어간다.
        if uniqueString.contains(str) {
            continue
        } else {
        /// uniqueString에 str이 포함되어 있지 않다면 uniqueString에 str을 추가한다.
            uniqueString += str
        }
    }
    
    return uniqueString
}