func solution(_ my_string: String, _ is_prefix: String) -> Int {
    
    guard is_prefix.count <= my_string.count else { return 0 }
    
    return String(Array(my_string)[0..<is_prefix.count]) == is_prefix ? 1 : 0
}