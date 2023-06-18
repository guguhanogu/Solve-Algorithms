func solution(_ myString: String, _ pat: String) -> Int {
    
    var replacedString: String = ""
    
    for str in Array(myString) {
        if str == "A" { replacedString += "B" }
        else { replacedString += "A" }
    }
    
    return replacedString.contains(pat) ? 1 : 0
}