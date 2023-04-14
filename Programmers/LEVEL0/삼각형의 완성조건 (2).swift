// MARK: - 삼각형의 완성조건 (2)
/// 선분 세 개로 삼각형을 만들기 위해서는 다음과 같은 조건을 만족해야 합니다.
///   - 가장 긴 변의 길이는 다른 두 변의 길이의 합보다 작아야 합니다.
/// 삼각형의 두 변의 길이가 담긴 배열 sides이 매개변수로 주어집니다. 나머지 한 변이 될 수 있는 정수의 개수를 return하도록 solution 함수를 완성해주세요.

// MARK: 2회차
/// 조건을 잘 보면,
/// 가장 긴 변의 길이는 다른 두 변의 길이의 합보다 작아야 한다.
/// 이 때, 두 변의 길이가 a, b로 주어져 있다면, 다른 한 변의 길이 x의 범위는 다음과 같다.
///             |a - b| < x < a + b
/// 이를 return해주면 된다.

import Foundation

func solution(_ sides:[Int]) -> Int {
    
    return ((abs(sides[0] - sides[1]) + 1)...(sides[0] + sides[1] - 1)).count

}

// MARK: 1회차
/// 세 개의 수 중 각각 가장 큰 변일 때 마다 분기를 나누어 계산했다.
/// 하지만 이등변 삼각형의 반례가 있어 문제가 틀렸다.
/// 이등변 삼각형에 대한 처리를 해주어야 한다.
import Foundation

func solution(_ sides:[Int]) -> Int {
    
    var count: Int = 0
    
    for side in 1...1000 {
        if side > sides[0] && side > sides[1] {
            if side < sides[0] + sides[1] { count += 1 }
        } else if sides[0] > side && sides[0] > sides[1] {
            if sides[0] < side + sides[1] { count += 1 }
        } else if sides[1] > side && sides[1] > sides[0] {
            if sides[1] < side + sides[0] { count += 1 }
        }
    }
    
    return count + 1
}