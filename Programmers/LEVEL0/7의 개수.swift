// MARK: - 7의 개수
/// 머쓱이는 행운의 숫자 7을 가장 좋아합니다.
/// 정수 배열 array가 매개변수로 주어질 때,
/// 7이 총 몇 개 있는지 return 하도록 solution 함수를 완성해보세요.

import Foundation

func solution(_ array:[Int]) -> Int {
    /// 7의 개수를 세는 counter
    var count: Int = 0
    /// array 배열의 숫자들을 문자열로 변환하여 배열에 담아준다.
    var stringArray: [String] = []    
    for number in array { stringArray.append(String(number)) }
    
    /// stringArray의 원소들을 다시 한 글자씩 쪼개준다.
    /// 쪼갠 글자에 7이 포함돼있으면, count를 1 올린다.
    for str in stringArray {
        let tempStringArray: [String] = str.map { String($0) }
        
        for number in tempStringArray {
            if number == "7" {
                count += 1
            }
        }
    }

    return count
}