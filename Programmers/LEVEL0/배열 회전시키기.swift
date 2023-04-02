// MARK: - 배열 회전시키기
/// 정수가 담긴 배열 numbers와 문자열 direction가 매개변수로 주어집니다.
/// 배열 numbers의 원소를 direction방향으로 한 칸씩 회전시킨 배열을 return하도록 solution 함수를 완성해주세요.

import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    
    switch direction {

        // right 회전일 경우
        /// 오른쪽 끝의 값(마지막 값)을 왼쪽 끝(첫번째 값)으로 보낸다.  
        case "right":
        if let temp: Int = numbers.last {
            return [temp] + Array(numbers.dropLast())
        }

        /// .frist()와 .last()는 Optional을 반환하므로
        /// 옵셔널 언래핑을 해준다.

        // left 회전일 경우
        /// 왼쪽 끝의 값(첫번째 값)을 오른쪽 끝(마지막 값)으로 보낸다.
        case "left":
        if let temp: Int = numbers.first {
            return Array(numbers.dropFirst()) + [temp]
        }
        default:
        break
    }
    
    return []
}