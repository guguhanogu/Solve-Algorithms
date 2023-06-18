func solution(_ str_list: [String], _ ex: String) -> String {
    
    var result: String = ""
    
    for str in str_list {
        if !str.contains(ex) { result += str }
    }
    
    return result
}