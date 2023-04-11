// MARK: - 컨트롤 제트
/// 숫자와 "Z"가 공백으로 구분되어 담긴 문자열이 주어집니다.
/// 문자열에 있는 숫자를 차례대로 더하려고 합니다.
/// 이 때 "Z"가 나오면 바로 전에 더했던 숫자를 뺀다는 뜻입니다.
/// 숫자와 "Z"로 이루어진 문자열 s가 주어질 때,
/// 머쓱이가 구한 값을 return 하도록 solution 함수를 완성해보세요.

// 제한사항
/// 1 ≤ s의 길이 ≤ 200
/// -1,000 < s의 원소 중 숫자 < 1,000
/// s는 숫자, "Z", 공백으로 이루어져 있습니다.
/// s에 있는 숫자와 "Z"는 서로 공백으로 구분됩니다.
/// 연속된 공백은 주어지지 않습니다.
/// 0을 제외하고는 0으로 시작하는 숫자는 없습니다.
/// s는 "Z"로 시작하지 않습니다.
/// s의 시작과 끝에는 공백이 없습니다.
/// "Z"가 연속해서 나오는 경우는 없습니다.

import Foundation

func solution(_ s:String) -> Int {
    /// " Z"를 "Z"로 치환하여 앞에 위치한 숫자와 붙여준다.
    let zString: String = s.replacingOccurrences(of: " Z", with: "Z")
    /// zString을 공백으로 구분하고 String으로 변환한 뒤, 해당 문자열에 Z를 포함하고 있는 문자는 거른다.
    var stringArray: [String] = zString.split { $0 == " " }.map { String($0) }.filter { !$0.contains("Z") }
    
    if stringArray.isEmpty {    /// stringArray이 비어있으면, 0을 return
        return 0
    } else {                    /// 비어있지 않으면, 배열의 합을 return
        return stringArray.reduce(0) { $0 + Int($1)! }
    }
}