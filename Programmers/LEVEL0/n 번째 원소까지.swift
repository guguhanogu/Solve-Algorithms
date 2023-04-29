// MARK: - n 번째 원소까지
/// 정수 리스트 num_list와 정수 n이 주어질 때,
/// num_list의 첫 번째 원소부터 n 번째 원소까지의
/// 모든 원소를 담은 리스트를 return하도록 solution 함수를 완성해주세요.

import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [Int] {
    
    var result: [Int] = []
    
    for index in 0...n - 1 {
        result.append(num_list[index])
    }
    
    return result
}

// MARK: - 다른 사람들의 풀이

func solution(_ num_list:[Int], _ n:Int) -> [Int] {
    return Array(num_list[...(n-1)])
}