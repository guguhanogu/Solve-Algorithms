func solution(_ myString: String) -> [Int] {
    
    var result: [Int] = []
    var count: Int = 0
    
    for char in myString {
        if char != "x" { count += 1 }
        else {
            result.append(count)
            count = 0
        }
    }
    
    result.append(count)
    
    return result
}