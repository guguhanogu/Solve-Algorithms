// MARK: - 진료 순서 정하기
/// 외과의사 머쓱이는 응급실에 온 환자의 응급도를 기준으로 진료 순서를 정하려고 합니다.
/// 정수 배열 emergency가 매개변수로 주어질 때
/// 응급도가 높은 순서대로 진료 순서를 정한 배열을 return하도록 solution 함수를 완성해주세요.

/// 고차함수로 풀면 코드를 줄일 수 있다.
/// 나중에 시도해 볼 것

import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    
    /// emergency의 값을 업데이트 하면서 탐색하기 위해
    /// 변수 형태의 emergencyValueArray를 생성
    var emergencyValueArray: [Int] = emergency 
    
    /// 우선순위 값을 담아줄 배열, emergency의 크기와 동일한 배열을 생성한다.
    var priorityArray: [Int] = [Int](repeating: 0, count: emergency.count)
    /// 우선순위 값
    var priority: Int = 1
    
    /// 우선순위 값이 emergency의 개수와 같아질 때 까지 반복한다.
    while priority != emergency.count + 1 {
        /// 최대값을 찾기 위한 변수
        var maxValue: Int = 0
        
        /// 최대값 찾기
        for value in emergencyValueArray {
            if value > maxValue { maxValue = value }
        }   
        
        /// 찾은 최대값을 바탕으로, priorityArray에 값을 담아준다.
        for (index, value) in emergencyValueArray.enumerated() {
            if value == maxValue {
                priorityArray[index] = priority
                /// 다음 우선순위 값을 찾기 위해
                /// 우선순위 값을 담은 value는 0으로 만들어준다.
                emergencyValueArray[index] = 0
                /// 우선순위를 1 증가시킨다.
                priority += 1
            }
        }
    }
    
    return priorityArray
}