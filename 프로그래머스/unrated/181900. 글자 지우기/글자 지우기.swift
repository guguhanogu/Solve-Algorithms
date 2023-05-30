func solution(_ my_string: String, _ indices: [Int]) -> String {
    
    var result: [Character] = Array(my_string)
    
    for index in indices { result[index] = " " }
    
    return String(result).replacingOccurrences(of: " ", with: "")
}