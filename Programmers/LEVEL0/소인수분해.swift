// MARK: - 소인수분해
/// 소인수분해란 어떤 수를 소수들의 곱으로 표현하는 것입니다.
/// 예를 들어 12를 소인수 분해하면 2 * 2 * 3 으로 나타낼 수 있습니다.
/// 따라서 12의 소인수는 2와 3입니다.
/// 자연수 n이 매개변수로 주어질 때
/// n의 소인수를 오름차순으로 담은 배열을 return하도록 solution 함수를 완성해주세요.

// MARK: - 3회차
/// 실수를 해버렸다.
/// continue -> break 로 바꿔줬더니 정답!

import Foundation

func solution(_ n:Int) -> [Int] {
    
    var number: Int = n             /// n 값을 복사한다.
    var dict: [Int: Int] = [:]      /// 딕션너리에 소인수를 담아 줄 예정.
    
    /// number가 1이 될 때 까지 반복
    while number != 1 {
        /// 2부터 number까지 number를 나눈다.
        for num in 2...number {
            /// 나누어 떨어지면
            if number % num == 0 {
                dict[num] = 1           /// 딕셔너리에 해당 값을 Key 값으로 넣어준다.
                number = number / num   /// number를 num으로 나눈 값으로 바꾼다.
                break                   /// 해당 for문 탈출!
            }
        }
    }

    /// 딕셔너리의 key 값들을 정렬하여 return 한다.
    return dict.keys.sorted()
}

// MARK: - 2회차
/// 채점 결과
/// 합계: 79.2 / 100.0

/// 딕셔너리에서 key 값의 value를 증가시키지 않고 그냥 덮어씌워봤다.
/// 그래도 결과는 같았다.
/// 로직에 문제가 있는지 확인해봐야겠다.

import Foundation

func solution(_ n:Int) -> [Int] {
    
    var number: Int = n
    var dict: [Int: Int] = [:]
    
    while number != 1 {
        
        for num in 2...number {
            if number % num == 0 {
                dict[num] = 1
                number = number / num
                continue
            }
        }
    }

    return dict.keys.sorted()
}


// MARK: - 1회차
/// 채점 결과
/// 합계: 79.2 / 100.0

import Foundation

func solution(_ n:Int) -> [Int] {
    
    var number: Int = n
    var dict: [Int: Int] = [:]
    
    while number != 1 {
        
        for num in 2...number {
            if number % num == 0 {
                
                if dict.contains(where: { $0.key == num }) {
                    dict[num]! += 1
                } else {
                    dict[num] = 1
                }
                
                number = number / num
                continue
            }
        }
    }

    return dict.keys.sorted()
}