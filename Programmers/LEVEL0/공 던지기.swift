// MARK: - 공 던지기
/// 머쓱이는 친구들과 동그랗게 서서 공 던지기 게임을 하고 있습니다.
/// 공은 1번부터 던지며 오른쪽으로 한 명을 건너뛰고 그다음 사람에게만 던질 수 있습니다.
/// 친구들의 번호가 들어있는 정수 배열 numbers와 정수 K가 주어질 때,
/// k번째로 공을 던지는 사람의 번호는 무엇인지 return 하도록 solution 함수를 완성해보세요.

// 제한사항
/// 2 < numbers의 길이 < 100
/// 0 < k < 1,000
/// numbers의 첫 번째와 마지막 번호는 실제로 바로 옆에 있습니다.
/// numbers는 1부터 시작하며 번호는 순서대로 올라갑니다.


// MARK: - 2회차
/// 1회차에서 k의 범위가 1부터인 것을 잘 보지 않아 오류가 났다.
/// k가 1일 경우를 분기처리 해주니 정답이었다.

import Foundation

func solution(_ numbers:[Int], _ k:Int) -> Int {
    /// k가 1이 아니면 gurad문을 통과해 아래 코드를 실행하고,
    /// k가 1이면 배열의 첫 원소를 return한다.
    guard k != 1 else { return numbers[0] }
    
    let count: Int = numbers.count  /// 배열의 원소 개수를 담아줄 변수
    var index: Int = 0              /// 배열의 인덱스를 담아줄 변수

    /// k번째로 던지는 사람을 return 하는 것이므로,
    /// k-1번 공을 던져야 한다.
    for i in 1...k - 1 {
        /// 한 명을 건너뛰고 공을 전달하므로 인덱스 값은 2 증가한다.
        for _ in 1...2 {
            index += 1                                  /// 인덱스 값을 1씩 증가시키고,
            if index == numbers.count { index = 0 }     /// index가 원소 개수와 같아지면 0으로 초기화한다.
        }
    }
    
    /// k번째로 던지는 사람을 return 한다.
    return numbers[index]
}