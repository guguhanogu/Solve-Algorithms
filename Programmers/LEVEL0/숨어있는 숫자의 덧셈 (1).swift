// MARK: - 숨어있는 숫자의 덧셈 (1)
/// 문자열 my_string이 매개변수로 주어집니다. 
/// my_string안의 모든 자연수들의 합을 return하도록 solution 함수를 완성해주세요.

import Foundation

extension String {
    var isInt: Bool {
        return Int(self) != nil
    }
}

func solution(_ my_string:String) -> Int {
    
    var result: Int = 0
    var stringArray: [String] = my_string.map{String($0)}
    
    for string in stringArray {
        if string.isInt {
            if let stringToInt: Int = Int(string) {
                result += stringToInt    
            }   
        }
    }
    
    return result
}