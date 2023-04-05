// MARK: - 팩토리얼
/// i팩토리얼 (i!)은 1부터 i까지 정수의 곱을 의미합니다.
/// 예를들어 5! = 5 * 4 * 3 * 2 * 1 = 120 입니다.
/// 정수 n이 주어질 때 다음 조건을 만족하는 가장 큰 정수 i를 return 하도록 solution 함수를 완성해주세요.
/// 조건: i! ≤ n

import Foundation

// MARK: - Factorial 함수
/// Int형 양의 정수를 입력하면 해당 수의 팩토리얼 값을 반환한다. 
func Factorial(_ i: Int) -> Int {
    if i < 2 { return 1 }
    return i * Factorial(i - 1)
}

func solution(_ n:Int) -> Int {
    
    var i: Int = 1
    
    /// 조건: i! ≤ n 을 만족할 때 까지 i를 1씩 늘린다.
    while Factorial(i) < n + 1 { i += 1 }
    
    /// 마지막 회차에서 i의 값을 1 늘려주었기 때문에
    /// i - 1을 return 한다. 
    return i - 1
}