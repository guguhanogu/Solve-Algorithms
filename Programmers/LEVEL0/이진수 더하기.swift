// MARK: - 이진수 더하기
/// 이진수를 의미하는 두 개의 문자열 bin1과 bin2가 매개변수로 주어질 때,
/// 두 이진수의 합을 return하도록 solution 함수를 완성해주세요.

// 2진수 -> 10진수
/// Int(binary: String, radix: 2)
/// 숫자로 바꿀 수 없는 문자일 경우 nil로 처리되기 때문에
/// Optional로 반환된다.

// 10진수 -> 2진수
/// String(demical: Int, radix: 2)

/// radix 뒤에 다른 수를 넣으면 해당 진수로 변환이 가능하다.

import Foundation

func solution(_ bin1:String, _ bin2:String) -> String { 
    String(Int(bin1, radix: 2)! + Int(bin2, radix: 2)!, radix: 2)
}