func solution(_ arr: [Int], _ queries: [[Int]]) -> [Int] {
    
    var result: [Int] = arr
    
    for query in queries {
        let s: Int = query[0]
        let e: Int = query[1]
        
        for i in s...e { result[i] += 1 }
    }
    
    return result
}