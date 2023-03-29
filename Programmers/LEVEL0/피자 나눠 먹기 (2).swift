// MARK: - 피자 나눠 먹기 (2)
/// 머쓱이네 피자가게는 피자를 여섯 조각으로 잘라 줍니다.
/// 피자를 나눠먹을 사람의 수 n이 매개변수로 주어질 때,
/// n명이 주문한 피자를 남기지 않고 모두 같은 수의 피자 조각을 먹어야 한다면
/// 최소 몇 판을 시켜야 하는지를 return 하도록 solution 함수를 완성해보세요.

import Foundation

func solution(_ n:Int) -> Int {

    // MARK: - 풀이법 (6과 n의 최소공배수)
    /// 모두 같은 수의 피자 조각을 먹기 위해서는
    /// 필요한 피자 조각이 6의 배수이면서 n의 배수여야 한다.
    /// 필요한 피자 조각(needSlices)이 6의 배수가 될 때까지
    /// n을 더해준다.

    let pizzaSlices: Int = 6 // 피자 한 판에 여섯 조각
    var needSlices: Int = n  // 필요한 피자 조각
    
    /// 반복
    while true {

        /// 필요한 피자 조각(needSlices)이 6(pizzaSlices)으로 나누어 떨어진다면(6의 배수라면),
        if needSlices % pizzaSlices == 0 {
            /// 필요한 피자 조각(needSlices) / 피자 한 판 당 피자 조각(pizzaSlices) = 필요한 피자 판 수 
            return needSlices / pizzaSlices
        } else { 
            /// 그렇지 않으면,
            /// 필요한 피자 조각(needSlices)에 인원 수 만큼 피자 조각을 더한다. 
            needSlices += n
        }
    }
}