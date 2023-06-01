func solution(_ arr: [Int], _ idx: Int) -> Int {
    
    for (index, num) in arr.enumerated() {
        if index >= idx, num == 1 { return index }
    }
    
    return -1
}