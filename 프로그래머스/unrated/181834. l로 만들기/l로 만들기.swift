func solution(_ myString: String) -> String {
    
    var result: [Character] = Array(myString)
    
    for (index, char) in result.enumerated() {
        if char < "l" { result[index] = "l" }
    }
    
    return String(result)
}