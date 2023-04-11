// MARK: - 최빈값 구하기
/// 최빈값은 주어진 값 중에서 가장 자주 나오는 값을 의미합니다.
/// 정수 배열 array가 매개변수로 주어질 때,
/// 최빈값을 return 하도록 solution 함수를 완성해보세요.
/// 최빈값이 여러 개면 -1을 return 합니다.

import Foundation

func solution(_ array:[Int]) -> Int {
    /// array에 원소가 1개라면 그 원소를 return 한다.
    guard array.count != 1 else { return array[0] }
    
    var dict: [Int: Int] = [:]  /// 배열의 수들을 딕셔너리에 담으려고 한다.
    var keyValue: Int = 0       /// 최빈값인 수
    var count: Int = 0          /// 최빈값의 개수
    
    /// array를 탐색한다.
    for num in array {
        if dict.contains(where: { $0.key == num }) {    /// 딕셔너리에 num이 포함되어 있으면, 해당 키 값의 value를 1 올려주고
            dict[num]! += 1
        } else {
            dict[num] = 1                               /// 없으면, 해당 키 값에 1을 할당해준다.
        }
    }
    
    /// dict을 탐색한다.
    for (key, value) in dict {
        if value == dict.values.max() {     /// value값이 가장 큰 Key를 찾는다.
            keyValue = key                  /// 그 값을 keyValue에 저장한다.
            count += 1                      /// 가장 큰 값이 여러 개 일수 있으므로 count 값을 1 올려준다.
        }
    }
    
    /// count 값이 1이면 keyValue 1이 아니면 -1을 return한다.
    return count == 1 ? keyValue : -1
}