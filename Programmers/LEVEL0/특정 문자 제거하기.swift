// MARK: - 특정 문자 제거하기
/// 문자열 my_string과 문자 letter이 매개변수로 주어집니다. 
/// my_string에서 letter를 제거한 문자열을 return하도록 solution 함수를 완성해주세요.

import Foundation

func solution(_ my_string:String, _ letter:String) -> String {
    var arr = my_string.split(separator: Character(letter))
    
    if arr.count == 1 {
        return String(arr[0])
    } else {

        var result: String = ""
        
        for str in arr {
            result += String(str)
        }   
        
        return result
    }
}

// 다른 풀이
func solution(_ my_string:String, _ letter:String) -> String {
    return my_string.filter{String($0) != letter}
}

func solution(_ my_string:String, _ letter:String) -> String {
    return my_string.replacingOccurrences(of: letter, with: "")
}