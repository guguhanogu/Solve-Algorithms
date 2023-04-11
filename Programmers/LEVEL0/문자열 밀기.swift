// MARK: - 문자열 밀기
/// 문자열 "hello"에서 각 문자를 오른쪽으로 한 칸씩 밀고
/// 마지막 문자는 맨 앞으로 이동시키면 "ohell"이 됩니다.
/// 이것을 문자열을 민다고 정의한다면
/// 문자열 A와 B가 매개변수로 주어질 때,
/// A를 밀어서 B가 될 수 있다면 밀어야 하는 최소 횟수를 return하고
/// 밀어서 B가 될 수 없으면 -1을 return 하도록 solution 함수를 완성해보세요.

import Foundation

func solution(_ A:String, _ B:String) -> Int {
    /// A를 배열로 쪼갠다.
    var stringArray: [String] = A.map { String($0) }
    
    /// 문자열의 수 만큼 문자열을 민다.
    for index in 0...A.count {
      /// 문자열을 밀기 전에 B와 같은지 검사한다.
        if stringArray.joined() == B {
          /// 같으면 index(문자열을 민 횟수)를 return한다.
            return index
        } else {
          /// 배열이 마지막 요소를 맨 앞에 삽입한다.(문자열을 민다.)
            let temp: String = stringArray.popLast()!
            stringArray.insert(temp, at: 0)
        }
    }
    
  /// 문자열을 밀어서 B가 될 수 없으면, -1을 return 한다.
    return -1
}
