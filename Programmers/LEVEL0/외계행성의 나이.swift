// MARK: - 외계행성의 나이
/// PROGRAMMERS-962 행성에서는 나이를 알파벳으로 말하고 있습니다.
/// a는 0, b는 1, c는 2, ..., j는 9입니다.
/// 예를 들어 23살은 cd, 51살은 fb로 표현합니다.
/// 나이 age가 매개변수로 주어질 때
/// PROGRAMMER-962식 나이를 return하도록 solution 함수를 완성해주세요.

import Foundation

func solution(_ age:Int) -> String {
    
    var result: String = ""
    let ageToAlphabet: [String] = [ "a", "b", "c", "d", "e",
                                    "f", "g", "h", "i", "j"]
    
    /// age를 String 배열로 쪼갠다.
    let strAgeArray: [String] = String(age).map{ String($0) }
    
    /// 한 숫자 씩 알파벳으로 변환하여 결과값에 더해준다.
    for strAge in strAgeArray {
      result += ageToAlphabet[Int(strAge)!]
    }
    
    return result
}