func solution(_ names: [String]) -> [String] {
    
    var result: [String] = []
    
    for (index, name) in names.enumerated() {
        if index % 5 == 0 { result.append(name) }
    }
    
    return result
}