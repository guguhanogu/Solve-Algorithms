// MARK: - 최댓값 만들기 (2)
/// 정수 배열 numbers가 매개변수로 주어집니다.
/// numbers의 원소 중 두 개를 곱해 만들 수 있는 최댓값을 
/// return하도록 solution 함수를 완성해주세요.

// MARK: - 2차 시도
/// 최대값 설정을 잘못했다.
/// Int.min으로 제일 작은 값을 최대값으로 설정해주었더니 문제가 풀렸다.

/// [혀이's Comments]
/// 최소 혹은 최대값 찾기, 비교 문제는
/// 제한 조건(범위 등)을 잘 파악해야 반례가 생기지 않는다.
/// 이 문제의 경우, 범위가 
/// -10,000 ≤ numbers의 원소 ≤ 10,000 이므로
/// 테스트 케이스에서 나올 수 있는 최대값의 범위는
/// -100000000 ≤ 최대값의 범위 ≤ 100000000 이다.

import Foundation

func solution(_ numbers:[Int]) -> Int {
    /// 최댓값을 저장해 줄 변수
    /// Int.min으로 제일 작은 값으로 설정한다.
    var maxNumber: Int = Int.min

    /// i 인덱스는 배열의 첫 번째 원소부터 배열의 마지막 - 1번째의 원소까지 탐색한다.
    /// j 인덱스는 배열의 i + 1번째 원소부터 배열의 마지막 원소까지 탐색한다.
    for i in 0...numbers.count - 2 {
        for j in i + 1...numbers.count - 1 {
            /// 두 원소의 값을 곱한다.
            let tempNumber: Int = numbers[i] * numbers[j]
            
            /// tempNumber가 최댓값 보다 크면 값을 변경해준다.
            if tempNumber > maxNumber {
                maxNumber = tempNumber
            }
        }
    }
    
    return maxNumber
}

// MARK: - 1차 시도
/// 한 테스트 케이스에서 틀렸다. 반례를 찾아야한다.
import Foundation

func solution(_ numbers:[Int]) -> Int {
    /// 최댓값을 저장해 줄 변수
    var maxNumber: Int = 0

    /// i 인덱스는 배열의 첫 번째 원소부터 배열의 마지막 - 1번째의 원소까지 탐색한다.
    /// j 인덱스는 배열의 i + 1번째 원소부터 배열의 마지막 원소까지 탐색한다.
    for i in 0...numbers.count - 2 {
        for j in i + 1...numbers.count - 1 {
            /// 두 원소의 값을 곱한다.
            let tempNumber: Int = numbers[i] * numbers[j]
            
            /// tempNumber가 최댓값 보다 크면 값을 변경해준다.
            if tempNumber > maxNumber {
                maxNumber = tempNumber
            }
        }
    }
    
    return maxNumber
}