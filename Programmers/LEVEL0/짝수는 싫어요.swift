// MARK: - 두 수의 곱
/// 정수 n이 매개변수로 주어질 때, 
/// n 이하의 홀수가 오름차순으로 담긴 배열을 return하도록 solution 함수를 완성해주세요.

import Foundation

func solution(_ n:Int) -> [Int] {
    
    var result: [Int] = []
    
    for index in 1...n {
        if index % 2 == 1 {
            result.append(index)
        }
    }
    
    return result
}