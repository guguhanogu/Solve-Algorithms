// MARK: - 원소들의 곱과 합
/// 정수가 담긴 리스트 num_list가 주어질 때,
/// 모든 원소들의 곱이 모든 원소들의 합의 제곱보다 작으면 1을
/// 크면 0을 return하도록 solution 함수를 완성해주세요.

import Foundation

func solution(_ num_list:[Int]) -> Int {
    
    /// 모든 원소들의 곱
    let multiple: Int = num_list.reduce(1) { $0 * $1 }
    /// 모든 원소들의 합의 제곱
    let sumSquare: Int = num_list.reduce(0) { $0 + $1 } * num_list.reduce(0) { $0 + $1 }
    
    /// 모든 원소들의 곱이 모든 원소들의 합의 제곱보다 작으면 1을
    /// 크면 0을 return
    return multiple < sumSquare ? 1 : 0
}