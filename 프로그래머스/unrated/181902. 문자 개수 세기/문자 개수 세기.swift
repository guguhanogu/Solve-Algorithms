func solution(_ my_string: String) -> [Int] {
    
    var result: [Int] = Array(repeating: 0, count: 52)
    
    for ascii in my_string.unicodeScalars {
        let value: Int = Int(ascii.value)
        
        // 65 ~ 90 대문자
        if value > 64, value < 91 { result[value - 65] += 1 }
        // 97 ~ 122 소문자
        else { result[value - 71] += 1 }
    }
    
    return result
}