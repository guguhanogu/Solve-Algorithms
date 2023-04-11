// MARK: - 배열 자르기
/// 정수 배열 numbers와 정수 num1, num2가 매개변수로 주어질 때,
/// numbers의 num1번 째 인덱스부터 num2번째 인덱스까지 자른 정수 배열을
/// return 하도록 solution 함수를 완성해보세요.

// 오류 발생
/// return numbers[num1...num2]
/// cannot convert value of type 'ArraySlice<Int>' to specified type '[Int]'
    
/// numbers[num1...num2] 의 자료형은
/// Array 가 아닌 ArraySlice 이다.
/// 타입이 다르므로
/// ArraySlice를 Array로 변환시켜주어야 한다.

import Foundation

func solution(_ numbers:[Int], _ num1:Int, _ num2:Int) -> [Int] {
    return Array(numbers[num1...num2])
}