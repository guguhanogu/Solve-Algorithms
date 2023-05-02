// MARK: - 코드 처리하기
/// 문자열 code가 주어집니다.
/// code를 앞에서부터 읽으면서 만약 문자가 "1"이면 mode를 바꿉니다.
/// mode에 따라 code를 읽어가면서 문자열 ret을 만들어냅니다.

/// mode는 0과 1이 있으며,
/// idx를 0 부터 code의 길이 - 1 까지 1씩 키워나가면서
/// code[idx]의 값에 따라 다음과 같이 행동합니다.

/// mode가 0일 때
/// code[idx]가 "1"이 아니면 idx가 짝수일 때만 ret의 code[idx]를 추가합니다.
/// code[idx]가 "1"이면 mode를 0에서 1로 바꿉니다.

/// mode가 1일 때
/// code[idx]가 "1"이 아니면 idx가 홀수일 때만 ret의 맨 뒤에 code[idx]를 추가합니다.
/// code[idx]가 "1"이면 mode를 1에서 0으로 바꿉니다.

/// 문자열 code를 통해 만들어진 문자열 ret를 return 하는 solution 함수를 완성해 주세요.
/// 단, 시작할 때 mode는 0이며, return 하려는 ret가 만약 빈 문자열이라면 대신 "EMPTY"를 return 합니다.

import Foundation

func solution(_ code:String) -> String {
    
    let codeArray: [String] = code.map { String($0) }   /// code를 한 글자씩 쪼갠다.
    var ret: String = ""                                /// code를 통해 만들어질 문자열 ret
    var mode: Bool = true  // 0: true, 1: false
    
    for (index, str) in codeArray.enumerated() {
        if str == "1" {                                 /// 1이면 모드를 바꾼다.
            mode.toggle()
        } else {
            switch mode {
                case true:                              /// 모드가 0 일 때
                    if index % 2 == 0 { ret += str }    /// index가 짝수라면, ret에 str을 추가한다.
                case false:                             /// 모드가 1 일 때
                    if index % 2 != 0 { ret += str }    /// index가 홀수라면, ret에 str을 추가한다.
            }
        }
    }
                                                        /// ret이 비어있다면, "EMPTY"
    return ret.isEmpty ? "EMPTY" : ret                  /// 아니라면 ret을 return한다.
}