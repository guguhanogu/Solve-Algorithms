func solution(_ my_string: String, _ m: Int, _ c: Int) -> String {
    
    /// m이 1인 경우는 my_string을 세로로 적는 것과 같으므로
    /// my_string을 return 합니다.
    if m == 1 { return my_string } else {
        
        /// m이 1이 아닐 경우, 아래 코드를 실행합니다.
        var result: String = ""
        
        for (index, str) in Array(my_string).enumerated() {
            /// my_string을 한 줄에 m글자 씩 쓰고,
            /// c열에 해당하는 글자일 경우, result에 추가합니다.
            if index % m == c - 1 { result += String(str) }
        }
        
        /// result를 출력합니다.
        return result
    }
}