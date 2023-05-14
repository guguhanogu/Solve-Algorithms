// MARK: - 배열 만들기 4
/// 정수 배열 arr가 주어집니다. arr를 이용해 새로운 배열 stk를 만드려고 합니다.
/// 변수 i를 만들어 초기값을 0으로 설정한 후 i가 arr의 길이보다 작으면 다음 작업을 반복합니다.

/// - 만약 stk가 빈 배열이라면 arr[i]를 stk에 추가하고 i에 1을 더합니다.
/// - stk에 원소가 있고, stk의 마지막 원소가 arr[i]보다 작으면 arr[i]를 stk의 뒤에 추가하고 i에 1을 더합니다.
/// - stk에 원소가 있는데 stk의 마지막 원소가 arr[i]보다 크거나 같으면 stk의 마지막 원소를 stk에서 제거합니다.

///위 작업을 마친 후 만들어진 stk를 return 하는 solution 함수를 완성해 주세요.

import Foundation

func solution(_ arr:[Int]) -> [Int] {
    
    var stk: [Int] = []             /// 새로운 배열 stk를 만드려고 합니다.
    var i: Int = 0                  /// 변수 i를 만들어 초기값을 0으로 설정한 후
                                    
    while i < arr.count {           /// i가 arr의 길이보다 작으면 다음 작업을 반복합니다.
        if stk.isEmpty {            /// 만약 stk가 빈 배열이라면
            stk.append(arr[i])      /// arr[i]를 stk에 추가하고
            i += 1                  /// i에 1을 더합니다.
        }

        if let last = stk.last {    /// stk에 원소가 있고,
            if last < arr[i] {      /// stk의 마지막 원소가 arr[i]보다 작으면
                stk.append(arr[i])  /// arr[i]를 stk의 뒤에 추가하고
                i += 1              /// i에 1을 더합니다.
            } else {                /// stk의 마지막 원소가 arr[i]보다 크거나 같으면
                stk.removeLast()    /// stk의 마지막 원소를 stk에서 제거합니다.
            }
        }
    }

    return stk                      /// 위 작업을 마친 후 만들어진 stk를 return 합니다.
}