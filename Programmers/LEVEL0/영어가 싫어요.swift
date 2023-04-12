// MARK: - 영어가 싫어요
/// 영어가 싫은 머쓱이는 영어로 표기되어있는 숫자를 수로 바꾸려고 합니다.
/// 문자열 numbers가 매개변수로 주어질 때,
/// numbers를 정수로 바꿔 return 하도록 solution 함수를 완성해 주세요.

// 다른 사람들의 풀이
/// 1. 딕셔너리 쓰기!
import Foundation

var dic = ["zero" : "0", "one": "1", "two": "2", "three": "3", "four": "4", "five": "5", "six": "6", "seven": "7", "eight": "8", "nine": "9"]
func solution(_ numbers:String) -> Int64 {
    var answer = numbers
    for (k, v) in dic {
        answer = String(answer.replacingOccurrences(of: k, with: v))
    }
    return Int64(answer)!
}

/// 2. 내 풀이와 비슷하다.
/// 굳이 while문을 쓸 필요가 없었다!
import Foundation

func solution(_ numbers:String) -> Int64 {
    let result = numbers
        .replacingOccurrences(of: "zero", with: "0")
        .replacingOccurrences(of: "one", with: "1")
        .replacingOccurrences(of: "two", with: "2")
        .replacingOccurrences(of: "three", with: "3")
        .replacingOccurrences(of: "four", with: "4")
        .replacingOccurrences(of: "five", with: "5")
        .replacingOccurrences(of: "six", with: "6")
        .replacingOccurrences(of: "seven", with: "7")
        .replacingOccurrences(of: "eight", with: "8")
        .replacingOccurrences(of: "nine", with: "9")

    return Int64(result)!
}


import Foundation

func solution(_ numbers:String) -> Int64 {
    
    var result = numbers
    
    while !result.allSatisfy({ $0.isNumber }) {
        if result.contains("zero") {
            result = result.replacingOccurrences(of: "zero", with: "0")
        } else if result.contains("one") {
            result = result.replacingOccurrences(of: "one", with: "1")
        } else if result.contains("two") {
            result = result.replacingOccurrences(of: "two", with: "2")
        } else if result.contains("three") {
            result = result.replacingOccurrences(of: "three", with: "3")
        } else if result.contains("four") {
            result = result.replacingOccurrences(of: "four", with: "4")
        } else if result.contains("five") {
            result = result.replacingOccurrences(of: "five", with: "5")
        } else if result.contains("six") {
            result = result.replacingOccurrences(of: "six", with: "6")
        } else if result.contains("seven") {
            result = result.replacingOccurrences(of: "seven", with: "7")
        } else if result.contains("eight") {
            result = result.replacingOccurrences(of: "eight", with: "8")
        } else if result.contains("nine") {
            result = result.replacingOccurrences(of: "nine", with: "9")
        } else {
            return 0
        }
    }
    
    return Int64(result)!
}