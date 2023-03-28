// MARK: - 문자 반복 출력하기
/// 문자열 my_string과 정수 n이 매개변수로 주어질 때, 
/// my_string에 들어있는 각 문자를 n만큼 반복한 문자열을 return 하도록 solution 함수를 완성해보세요.

import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    
    var result: String = ""
    let arr = my_string.map{String($0)}
    
    for letter in arr {
        for _ in 1...n {
            result += letter
        }
    }
    
    return result
}