// MARK: - 수 조작하기 1
/// 정수 n과 문자열 control이 주어집니다.
/// control은 "w", "a", "s", "d"의 4개의 문자로 이루어져 있으며,
/// control의 앞에서부터 순서대로 문자에 따라 n의 값을 바꿉니다.

/// - "w" : n이 1 커집니다.
/// - "s" : n이 1 작아집니다.
/// - "d" : n이 10 커집니다.
/// - "a" : n이 10 작아집니다.
/// 위 규칙에 따라 n을 바꿨을 때 가장 마지막에 나오는 n의 값을 return 하는 solution 함수를 완성해 주세요.

func solution(_ n: Int, _ control: String) -> Int {
    /// 결과값을 담아줄 변수
    var result: Int = n
    
    for key in control {
        switch key {            /// key가
            case "w":           /// w일 때
                result += 1     /// n이 1 커집니다.
            case "s":           /// s일 때
                result -= 1     /// n이 1 작아집니다.
            case "d":           /// d일 때
                result += 10    /// n이 10 커집니다.
            case "a":           /// a일 때
                result -= 10    /// n이 10 작아집니다.
            default:            /// 이외의 입력이 들어오면
                continue        /// 다음으로 넘어감
        }
    }
    
    return result
}