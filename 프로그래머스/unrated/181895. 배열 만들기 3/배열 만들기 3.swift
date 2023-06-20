func solution(_ arr: [Int], _ intervals: [[Int]]) -> [Int] {
    
    var result: [Int] = []
    
    for interval in intervals {
        let a: Int = interval[0]
        let b: Int = interval[1]
        
        result += arr[a...b]
    }
    
    return result
}