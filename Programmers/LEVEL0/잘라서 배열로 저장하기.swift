// MARK: - 잘라서 배열로 저장하기
/// 문자열 my_str과 n이 매개변수로 주어질 때,
/// my_str을 길이 n씩 잘라서 저장한 배열을 return하도록 solution 함수를 완성해주세요.

import Foundation

func solution(_ my_str:String, _ n:Int) -> [String] {
    
    var count: Int = 0                                      /// 글자 수 세기
    let originalArray: [String] = my_str.map { String($0) } /// my_str을 쪼개서 배열에 담는다.
    var resultArray: [String] = []  // 결과 값을 담을 배열
    var tempString: String = ""     // n글자씩 담아줄 문자열

    /// count가 my_str의 글자 수 와 같아질 때까지 반복한다.
    while count != my_str.count {

        tempString += originalArray[count]  /// tempString에 originalArray[count] 값을 넣고
        count += 1                          /// count를 1 증가시킨다.
        
        if count % n == 0 {                 /// count가 n의 배수이면    
            resultArray.append(tempString)  /// resultArray에 tempString을 넣고 
            tempString = ""                 /// tempString을 비운다.
        }
    }
    
    /// my_str의 글자 수가 n의 배수가 아닐 땐
    /// tempString에 값이 남아있으므로
    /// 그 값을 resultArray에 담아준다.
    /// tempString이 빈 문자열일 경우에는 resultArray에 값을 담으면 안된다.
    if !tempString.isEmpty { resultArray.append(tempString) }
    
    return resultArray
}