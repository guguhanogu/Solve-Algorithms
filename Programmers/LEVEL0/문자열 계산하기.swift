// MARK: - 문자열 계산하기
/// my_string은 "3 + 5"처럼 문자열로 된 수식입니다.
/// 문자열 my_string이 매개변수로 주어질 때,
/// 수식을 계산한 값을 return 하는 solution 함수를 완성해주세요.

// 제한사항
/// 연산자는 +, -만 존재합니다.
/// 문자열의 시작과 끝에는 공백이 없습니다.
/// 0으로 시작하는 숫자는 주어지지 않습니다.
/// 잘못된 수식은 주어지지 않습니다.
/// 5 ≤ my_string의 길이 ≤ 100
/// my_string을 계산한 결과값은 1 이상 100,000 이하입니다.
///     my_string의 중간 계산 값은 -100,000 이상 100,000 이하입니다.
///     계산에 사용하는 숫자는 1 이상 20,000 이하인 자연수입니다.
///     my_string에는 연산자가 적어도 하나 포함되어 있습니다.
/// return type 은 정수형입니다.
/// my_string의 숫자와 연산자는 공백 하나로 구분되어 있습니다.


// 2차 시도
/// 문제의 제한사항을 제대로 읽지 않아 테스트 케이스가 모두 "a + b"로만 이루어진 줄 알았다.
/// 제한사항에 보면 my_string에는 연산자가 적어도 하나 포함되어 있습니다. 라고 쓰여있다.
/// 결국 my_string에는 적어도 2개 이상의 수와 1개 이상의 연산자가 있다는 것이다.
/// 다음부터는 제한사항을 잘 읽어보도록 하자.

import Foundation

func solution(_ my_string:String) -> Int {
    
    /// +, - 를 연산자로 취급하지 않고 양수와 음수로 변환시켜주기 위해
    /// "- "를 "-"로 치환하여 - 뒤에 오는 수를 음수로 만들어주고,
    /// "+"는 공백으로 치환하여 + 뒤에 오는 수를 양수로 만들어준다.
    var transString = my_string.replacingOccurrences(of: "- ", with: "-")
    transString = transString.replacingOccurrences(of: "+", with: " ")
    
    /// 이 문자열을 공백을 기준으로 잘라 배열로 변환한 후 해당 배열의 모든 값들을 더해준다.
    return transString.split(separator: " ").reduce(0) { $0 + Int($1)! }
}