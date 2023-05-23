// MARK: - 부분 문자열 이어 붙여 문자열 만들기
/// 길이가 같은 문자열 배열 my_strings와 이차원 정수 배열 parts가 매개변수로 주어집니다.
/// parts[i]는 [s, e] 형태로, my_string[i]의 인덱스 s부터 인덱스 e까지의 부분 문자열을 의미합니다.
/// 각 my_strings의 원소의 parts에 해당하는 부분 문자열을 순서대로 이어 붙인 문자열을 return 하는 solution 함수를 작성해 주세요.

func solution(_ my_strings: [String], _ parts: [[Int]]) -> String {
    
    var result: String = ""
    
    for (index, part) in parts.enumerated() {
        let s: Int = part[0]    /// 인덱스 s
        let e: Int = part[1]    /// 인덱스 e
        /// 각 my_strings 원소의 parts에 해당하는 부분 문자열을
        /// 순서대로 result에 이어 붙인다.
        result += String(Array(my_strings[index])[s...e])
    }
    
    /// result를 return 한다.
    return result
}