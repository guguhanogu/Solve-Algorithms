// MARK: - 숨어있는 숫자의 덧셈 (1)
/// 문자열 my_string이 매개변수로 주어집니다. 
/// my_string안의 모든 자연수들의 합을 return하도록 solution 함수를 완성해주세요.

// MARK: - 2차 시도
/// 숨어있는 숫자의 덧셈 (2)를 고차함수로 풀면서 (1)도 고차함수를 이용하여 다시 풀었다.

import Foundation

func solution(_ my_string:String) -> Int {
    my_string
        .filter { $0.isNumber }     /// my_string을 숫자만 있는 문자열로 변환
        .map { Int(String($0))! }   /// 문자열을 한 글자씩 쪼개고 Int형으로 변환한다.
        .reduce(0, +)               /// map의 결과값을 모두 더한다.
}

// MARK: - 1차 시도
import Foundation

/// isNumber라는 프로퍼티를 알기 전에 풀었어서
/// isInt라는 연산 프로퍼티를 extension하여 만들어 사용했다.
extension String {
    var isInt: Bool {
        return Int(self) != nil // Int로 형 변환이 가능하면 true, 아니면 false를 반환한다.
    }
}

func solution(_ my_string:String) -> Int {
    
    var result: Int = 0
    var stringArray: [String] = my_string.map{String($0)} // my_string을 한 글자로 쪼갠다.
    
    /// stringArray를 탐색
    for string in stringArray {
        /// string이 Int로 형 변환이 가능하면,
        if string.isInt {
            if let stringToInt: Int = Int(string) {
                result += stringToInt // result에 값을 더해준다.
            }   
        }
    }
    
    return result
}