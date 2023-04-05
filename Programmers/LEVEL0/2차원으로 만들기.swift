// MARK: - 2차원으로 만들기
/// 정수 배열 num_list와 정수 n이 매개변수로 주어집니다.
/// num_list를 다음 설명과 같이 2차원 배열로 바꿔 return하도록 solution 함수를 완성해주세요.

/// num_list가 [1, 2, 3, 4, 5, 6, 7, 8]로
/// 길이가 8이고 n이 2이므로 num_list를 2 * 4 배열로 다음과 같이 변경합니다.
/// 2차원으로 바꿀 때에는 num_list의 원소들을 앞에서부터 n개씩 나눠 2차원 배열로 변경합니다.

/// num_list	                n	result
/// [1, 2, 3, 4, 5, 6, 7, 8]	2	[[1, 2], [3, 4], [5, 6], [7, 8]]

import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
    
    /// num_list의 index 값을 따라갈 변수
    var index: Int = 0
    var result: [[Int]] = []
    
    /// index가 num_list.count와 같으면 while문을 종료한다.
    while index != num_list.count {
        /// tempArray 생성 및 초기화.
        var tempArray: [Int] = []
        
        /// n번 만큼 tempArray에 숫자를 담고, index 값을 1 올려준다.
        for _ in 1...n {
            tempArray.append(num_list[index])
            index += 1
        }
        
        /// tempArray를 result에 담는다.
        result.append(tempArray)
    }
    
    return result
}