// MARK: - 수 조작하기 2
/// 정수 배열 numLog가 주어집니다.
/// 처음에 numLog[0]에서 부터 시작해 "w", "a", "s", "d"로 이루어진 문자열을 입력으로 받아
/// 순서대로 다음과 같은 조작을 했다고 합시다.

/// - "w" : 수에 1을 더한다.
/// - "s" : 수에 1을 뺀다.
/// - "d" : 수에 10을 더한다.
/// - "a" : 수에 10을 뺀다.
/// 그리고 매번 조작을 할 때마다 결괏값을 기록한 정수 배열이 numLog입니다.
/// 즉, numLog[i]는 numLog[0]로부터 총 i번의 조작을 가한 결과가 저장되어 있습니다.

/// 주어진 정수 배열 numLog에 대해 조작을 위해 입력받은 문자열을 return 하는 solution 함수를 완성해 주세요.


func solution(_ numLog: [Int]) -> String {
    /// 결과값을 저장할 변수
    var result: String = ""
    
    for (index, num) in numLog.enumerated() {
        
        if index + 1 == numLog.count { /// index + 1이 배열 크기보다 커지면 안되므로 
            break                      /// break
        } else {
            /// index + 1번째의 값에서 index번째의 값을 빼주어 저장한다.
            let control: Int = numLog[index + 1] - numLog[index]

            switch control {        /// control 값에 따라 다음 작업을 수행한다.
                case 1:             /// 1 이면
                    result += "w"   /// w 추가
                case -1:            /// -1 이면
                    result += "s"   /// s 추가
                case 10:            /// 10 이면
                    result += "d"   /// d 추가
                case -10:           /// -10 이면
                    result += "a"   /// a 추가
                default:            /// 이외의 수 일 경우
                    continue        /// 다음으로 넘어감
            }
        }
    }
    
    return result
}