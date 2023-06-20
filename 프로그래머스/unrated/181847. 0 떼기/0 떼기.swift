func solution(_ n_str: String) -> String {
    
    var result: [String] = n_str.map { String($0) }
    
    for (index, str) in n_str.enumerated() {
        if str == "0" { result[index] = "" } 
        else { break }
    }
    
    return result.reduce("", +)
}