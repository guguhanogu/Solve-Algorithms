func solution(_ my_string: String) -> Int {
    
    // '-' 뒤의 공백을 없애서 해당 수를 음수로 만든다.
    var transString = my_string.replacingOccurrences(of: "- ", with: "-")
    // '+'를 공백으로 바꾼다.
    transString = transString.replacingOccurrences(of: "+", with: " ")
    
    // 공백을 기준으로 문자열을 자르고 각 수를 더한값을 return.
    return transString.split(separator: " ").reduce(0) { $0 + Int($1)! }
}