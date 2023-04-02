// MARK: - 숫자 찾기
/// 정수 num과 k가 매개변수로 주어질 때,
/// num을 이루는 숫자 중에 k가 있으면 
/// num의 그 숫자가 있는 자리 수를 return하고 
/// 없으면 -1을 return 하도록 solution 함수를 완성해보세요.

import Foundation

func solution(_ num:Int, _ k:Int) -> Int {
    
    /// num을 String 배열로 변환한다.
    let numToStringArray: [String] = String(num).map{ String($0) }
    
    /// num과 k가 같은 값이 있으면, 해당 값의 index + 1을 return.
    for (index, str) in numToStringArray.enumerated() {
        if str == String(k) { return index + 1 } 
    }
    
    /// 없으므로 -1 return
    return -1
}