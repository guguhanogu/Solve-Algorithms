// MARK: - 인덱스 바꾸기
/// 문자열 my_string과 정수 num1, num2가 매개변수로 주어질 때, 
/// my_string에서 인덱스 num1과 인덱스 num2에 해당하는 문자를 바꾼 문자열을 return 하도록 solution 함수를 완성해보세요.

import Foundation

func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
    
    /// my_string을 배열로 쪼갠다.
    var strArray: [String] = my_string.map{ String($0) }
    
    /// 해당하는 인덱스 값의 문자를 각각 저장한다.
    let temp1: String = strArray[num1]
    let temp2: String = strArray[num2]
    
    /// 두 값을 서로 바꿔준다.
    strArray[num1] = temp2
    strArray[num2] = temp1
    
    /// 배열을 다시 문자열로 변환하여 return.
    return strArray.joined()
}