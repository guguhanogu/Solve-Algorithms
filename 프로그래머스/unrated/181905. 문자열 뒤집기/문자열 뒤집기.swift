func solution(_ my_string: String, _ s: Int, _ e: Int) -> String {
    if s == e { return my_string } else {
        
        let myStringArray: [String] = my_string.map { String($0) }
        let reversedString: String = String(myStringArray[s...e].joined().reversed())
        let prefixString: Substring = my_string.prefix(s)
        let suffixString: Substring = my_string.suffix(my_string.count - e - 1)
        
        return prefixString + reversedString + suffixString
    }
    
}