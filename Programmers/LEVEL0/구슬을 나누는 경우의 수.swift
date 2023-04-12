// MARK: - 구슬을 나누는 경우의 수
/// 머쓱이는 구슬을 친구들에게 나누어주려고 합니다.
/// 구슬은 모두 다르게 생겼습니다.
/// 머쓱이가 갖고 있는 구슬의 개수 balls와 
/// 친구들에게 나누어 줄 구슬 개수 share이 매개변수로 주어질 때,
/// balls개의 구슬 중 share개의 구슬을 고르는
/// 가능한 모든 경우의 수를 return 하는 solution 함수를 완성해주세요.

// HINT: - 서로 다른 n개 중 m개를 뽑는 경우의 수 공식은 다음과 같습니다.
// n! / ( (n-m)! * m! )

import Foundation

/// n의 팩토리얼을 return해주는 함수
func factorial(_ n: Int) -> Int {
    return n < 2 ? 1 : n * factorial(n - 1)
}

/// HINT의 공식대로 return해 준다.
func solution(_ balls:Int, _ share:Int) -> Int {
    return factorial(balls) / (factorial(balls - share) * factorial(share))
}