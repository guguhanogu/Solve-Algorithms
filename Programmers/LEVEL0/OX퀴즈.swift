// MARK: - OX퀴즈
/// 덧셈, 뺄셈 수식들이 'X [연산자] Y = Z' 형태로 들어있는 문자열 배열 quiz가 매개변수로 주어집니다.
/// 수식이 옳다면 "O"를 틀리다면 "X"를 순서대로 담은 배열을 return하도록 solution 함수를 완성해주세요.

// 입출력 예
/// quiz                        	                              result
/// ["3 - 4 = -3", "5 + 6 = 11"]	                              ["X", "O"]
/// ["19 - 6 = 13", "5 + 66 = 71", "5 - 15 = 63", "3 - 1 = 2"]	["O", "O", "X", "O"]

import Foundation

func solution(_ quiz:[String]) -> [String] {
    /// 퀴즈의 결과를 담아줄 배열
    var result: [String] = []
    
    /// quiz 배열에서 한 문제씩 탐색한다.
    for problem in quiz {
        let numberArray = problem.split(whereSeparator: { $0 == " " })  /// 공백을 기준으로 문자열을 자른다.
        /// 결과: ["3", "-", "4", "=", "-3"]
      
        /// numberArray[1]에는 연산자만 들어오게 되므로,
        switch numberArray[1] {
            /// 덧셈
            case "+":
                /// 해당 문제가 정답이면 O를 오답이면 X를 result에 담아준다.
                result.append(Int(numberArray[0])! + Int(numberArray[2])! == Int(numberArray[4])!
                              ? "O" : "X")
            /// 뺄셈
            case "-":
                /// 해당 문제가 정답이면 O를 오답이면 X를 result에 담아준다.
                result.append(Int(numberArray[0])! - Int(numberArray[2])! == Int(numberArray[4])!
                              ? "O" : "X")
            default:
            return []
        }
    }
    
    return result
}
