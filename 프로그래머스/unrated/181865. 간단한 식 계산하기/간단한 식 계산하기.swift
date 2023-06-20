import Foundation

func solution(_ binomial:String) -> Int {
    
    var op: String = ""
    var result: String = binomial
    
    if binomial.contains("+") { op = "sum" }
    else if binomial.contains("-") { op = "sub" }
    else { op = "mul"}
    
    switch op {
        case "sum":
        result = result.replacingOccurrences(of: "+ ", with: "")
        return result.components(separatedBy: " ").map { Int($0)! }.reduce(0, +)
        
        case "sub":
        result = result.replacingOccurrences(of: "- ", with: "-")
        return result.components(separatedBy: " ").map { Int($0)! }.reduce(0, +)
        
        default:
        result = result.replacingOccurrences(of: "* ", with: "")
        return result.components(separatedBy: " ").map { Int($0)! }.reduce(1, *)
    }
}