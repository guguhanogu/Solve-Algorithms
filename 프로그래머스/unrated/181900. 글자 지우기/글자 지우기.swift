func solution(_ my_string: String, _ indices: [Int]) -> String {
    
    /// my_string을 배열로 변환해 인덱스에 접근할 수 있게 합니다.
    var result: [Character] = Array(my_string)
    
    /// 배열로 변환한 my_string에서
    /// indices의 원소에 해당하는 인덱스의 글자를 지우고
    for index in indices { result[index] = " " }
    
    /// 이어 붙인 문자열을 return 합니다.
    return String(result).replacingOccurrences(of: " ", with: "")
}
