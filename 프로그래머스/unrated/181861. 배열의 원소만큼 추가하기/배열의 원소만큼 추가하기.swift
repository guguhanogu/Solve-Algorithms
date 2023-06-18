func solution(_ arr: [Int]) -> [Int] {
    
    var result: [Int] = []
    
    for num in arr { result += Array(repeating: num, count: num) }
    
    return result
}