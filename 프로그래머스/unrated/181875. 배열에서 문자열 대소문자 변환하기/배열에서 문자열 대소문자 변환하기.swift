func solution(_ strArr: [String]) -> [String] {
    
    var result: [String] = []
    
    for (index, str) in strArr.enumerated() {
        
        let isOdd: Bool
        if index % 2 == 0 { isOdd = false } else { isOdd = true }
        
        switch isOdd {
            case true:
                result.append(str.uppercased())
            case false:
                result.append(str.lowercased())
        }
    }
    
    return result
}