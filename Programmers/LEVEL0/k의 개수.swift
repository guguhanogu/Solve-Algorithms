// MARK: - k의 개수
/// 1부터 13까지의 수에서, 
/// 1은 1, 10, 11, 12, 13 이렇게 총 6번 등장합니다.
/// 정수 i, j, k가 매개변수로 주어질 때, 
/// i부터 j까지 k가 몇 번 등장하는지 return 하도록 solution 함수를 완성해주세요.

import Foundation

func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
    
    var count: Int = 0
    
    /// i부터 j까지 반복
    for number in i...j {
        /// number를 String으로 변환하여 배열로 쪼갠다.
        let numberToStringArray: [String] = String(number).map { String($0) }
        
        /// numberToStringArray에 k가 몇 번 등장하는 지 탐색한다.
        for str in numberToStringArray {
            /// k가 있으면 count를 1 올려준다.
            if str == String(k) { count += 1 }
        }
    }
    
    return count
}