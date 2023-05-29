func solution(_ q: Int, _ r: Int, _ code: String) -> String {
    
    var result: String = ""
    
    for (index, str) in Array(code).enumerated() {
        /// code의 각 인덱스를 q로 나누었을 때 나머지가 r인 위치의 문자를
        /// reulst에 더해줍니다.
        if index % q == r { result += String(str) }
    }
    
    /// result를 return 합니다.
    return result
}