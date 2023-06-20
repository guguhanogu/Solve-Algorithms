func solution(_ n: Int) -> [[Int]] {
    
    var result: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: n)
    
    for i in 0..<n {
        for j in 0..<n {
            if i == j { result[i][j] = 1 }
        }
    }
    
    return result
}