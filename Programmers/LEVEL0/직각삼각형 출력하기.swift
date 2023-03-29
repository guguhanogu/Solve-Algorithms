// MARK: - 중앙값 구하기
/// "*"의 높이와 너비를 1이라고 했을 때, "*"을 이용해 직각 이등변 삼각형을 그리려고합니다.
/// 정수 n 이 주어지면 높이와 너비가 n 인 직각 이등변 삼각형을 출력하도록 코드를 작성해보세요.

import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
/// n은 배열이므로, n안의 값을 Int형 변수 value에 담아준다.
var value: Int = n[0]

/// 직각 이등변 삼각형은 value 개의 행을 가진다.
for count in 1...value {
    // dot 문자열 초기화
    var dot: String = ""
    
    /// 출력하고자 하는 직각 이등변 삼각형은
    /// 위에서 아래로 갈수록 dot의 길이가 길어지는 직각 이등변 삼각형이므로
    /// 한 행에는 count 만큼의 dot을 가진다.
    for _ in 1...count {
        dot += "*"        
    }

    /// 행 마다 dot을 출력해준다.   
    print(dot)
}