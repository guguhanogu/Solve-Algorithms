// MARK: - 최댓값 만들기(1)
/// 정수 배열 numbers가 매개변수로 주어집니다.
/// numbers의 원소 중 두 개를 곱해 만들 수 있는 최댓값을 return하도록 solution 함수를 완성해주세요.

import Foundation

func solution(_ numbers:[Int]) -> Int {
    
    var maxNumber: Int = 0
    
    for count in 0..<numbers.count {
        for index in count..<numbers.count {
            
            if count == index {
                continue
            }
            
            let temp: Int = numbers[count] * numbers[index]
            
            if temp > maxNumber {
                maxNumber = temp
            }
        }
    }
    
    return maxNumber
}