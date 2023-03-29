// MARK: - 개미 군단
/// 가위는 2 바위는 0 보는 5로 표현합니다.
/// 가위 바위 보를 내는 순서대로 나타낸 문자열 rsp가 매개변수로 주어질 때,
/// rsp에 저장된 가위 바위 보를 모두 이기는 경우를 순서대로 나타낸 문자열을 return하도록 solution 함수를 완성해보세요.

import Foundation

/// 손 열거형. 
/// 주먹, 보, 가위의 case를 가짐.
enum Hand {
    case rock
    case paper
    case scissors
}

extension Hand {

    /// String을 for문으로 돌릴 경우, 한 글자씩 탐색하는데,
    /// 이 때 한 글자는 Character형 변수이다.
    /// 값을 비교해주기 위해 value와 win을 Character형 변수로 선언하였다.

    /// 주먹, 보, 가위에 해당하는 값을 반환하는 변수.
    var value: Character {
        switch self {
            case .rock:
            return "0"
            case .paper:
            return "5"
            case .scissors:
            return "2"
        }
    }
    
    /// 주먹, 보, 가위에 이길 수 있는 값을 반환하는 변수.
    var win: Character {
        switch self {
            case .rock:
            return "5"
            case .paper:
            return "2"
            case .scissors:
            return "0"
        }
    }
}

func solution(_ rsp:String) -> String {
    
    /// 결과 값을 저장해줄 result
    var result: String = ""
    
    /// rsp에 담긴 게임 수 만큼 반복
    for game in rsp {

        /// 한 게임에서
        switch game {
            /// 주먹을 냈다면
            /// 주먹을 이길 수 있는 값(보: 5) 반환
            case Hand.rock.value:
            result.append(Hand.rock.win)

            /// 보를 냈다면
            /// 보를 이길 수 있는 값(가위: 2) 반환
            case Hand.paper.value:
            result.append(Hand.paper.win)

            /// 가위를 냈다면
            /// 가위를 이길 수 있는 값(주먹: 0) 반환
            case Hand.scissors.value:
            result.append(Hand.scissors.win)
            default:
            break
        }
    }
    
    return result
}