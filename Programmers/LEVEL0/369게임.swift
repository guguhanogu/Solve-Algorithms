// MARK: - 369게임
/// 머쓱이는 친구들과 369게임을 하고 있습니다.
/// 369게임은 1부터 숫자를 하나씩 대며
/// 3, 6, 9가 들어가는 숫자는
/// 숫자 대신 3, 6, 9의 개수만큼 박수를 치는 게임입니다.
/// 머쓱이가 말해야하는 숫자 order가 매개변수로 주어질 때,
/// 머쓱이가 쳐야할 박수 횟수를 return 하도록 solution 함수를 완성해보세요.

import Foundation

func solution(_ order:Int) -> Int {
    
    /// order를 문자열로 변환한다. (orderToString)
    /// 문자열로 변환한 orderToString을 배열로 쪼갠다. (orderStringToArray)
    let orderToString: String = String(order)
    let orderStringToArray: [String] = orderToString.map { String($0) }
    var clapCount: Int = 0
    
    /// orderStringToArray를 탐색하여 3, 6, 9가 있을 경우'
    /// clapCount를 1 증가시킨다.
    for i in orderStringToArray {
        if i == "3" {
            clapCount += 1
        } else if i == "6" {
            clapCount += 1
        } else if i == "9" {
            clapCount += 1
        }
    }
    
    return clapCount
}