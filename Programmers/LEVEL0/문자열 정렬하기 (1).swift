// MARK: - 문자열 정렬하기 (1)
/// 문자열 my_string이 매개변수로 주어질 때,
/// my_string 안에 있는 숫자만 골라 
// 오름차순 정렬한 리스트를 return 하도록 solution 함수를 작성해보세요.

import Foundation

extension String {
    var isInt: Bool {
        return Int(self) != nil
    }
}

func solution(_ my_string:String) -> [Int] {
    
    var stringArray: [String] = my_string.map{ String($0) }
    var result: [Int] = []
    
    for string in stringArray {
        if string.isInt {
            if let stringToInt: Int = Int(string) {
                result.append(stringToInt)
            }
        }
    }
    
    result.sort()
    
    return result
}