// MARK: - 합성수 찾기
/// 약수의 개수가 세 개 이상인 수를 합성수라고 합니다.
/// 자연수 n이 매개변수로 주어질 때 
/// n이하의 합성수의 개수를 return하도록 solution 함수를 완성해주세요.

// MARK: - 2차 시도
/// n이 4보다 작을 경우,
/// for문 범위 4...n 에서 형식이 잘못돼서 작동하지 않는다.
/// 난 바보다.

import Foundation

func solution(_ n:Int) -> Int {
    // n이하의 합성수 개수
    var count: Int = 0
    
    if n > 3 {
        for number in 4...n {
            // 약수를 담아줄 tempArray
            var tempArray: [Int] = []

            // 1부터 number까지 탐색하여
            //number의 약수를 tempArray에 담아준다.
            for i in 1...number {
                if number % i == 0 { tempArray.append(i) }
            }
        
            // 약수의 개수가 3개 이상이면 합성수이므로
            // count를 1 늘려준다.    
            if tempArray.count > 2 { count += 1 }
        }
    }
    
    return count
}

// MARK: - 1차 시도
import Foundation

func solution(_ n:Int) -> Int {
    // n이하의 합성수 개수
    var count: Int = 0
    
    for number in 4...n {
        // 약수를 담아줄 tempArray
        var tempArray: [Int] = []

        // 1부터 number까지 탐색하여
        //number의 약수를 tempArray에 담아준다.
        for i in 1...number {
            if number % i == 0 { tempArray.append(i) }
        }
    
        // 약수의 개수가 3개 이상이면 합성수이므로            
        // count를 1 늘려준다.    
        if tempArray.count > 2 { count += 1 }
    }
    
    return count
}