// MARK: - 숨어 있는 숫자의 덧셈 (2)
/// 문자열 my_string이 매개변수로 주어집니다.
/// my_string은 소문자, 대문자, 자연수로만 구성되어있습니다.
/// my_string안의 자연수들의 합을 return하도록 solution 함수를 완성해주세요.

// 제한사항
/// 1 ≤ my_string의 길이 ≤ 1,000
/// 1 ≤ my_string 안의 자연수 ≤ 1000
/// 연속된 수는 하나의 숫자로 간주합니다.
/// 000123과 같이 0이 선행하는 경우는 없습니다.
/// 문자열에 자연수가 없는 경우 0을 return 해주세요.

// MARK: - 2차 시도
/// 고차 함수에 대해 공부했다.
/// isNumber라는 연산 프로퍼티를 통해 해당 Character가 숫자인지 판별할 수 있다.

my_string.split(whereSeparator: { !$0.isNumber })
/// 이 코드는 my_string에서 숫자가 아닌 Character를 기준으로 쪼개준다.
/// 결과적으로, 숫자만 담긴 문자열 배열이 반환된다.
/// 결과: "aAb1B2cC34oOp" -> ["1", "2", "34"]
/// 이제 이 배열의 합을 계산하면 되므로, reduce를 이용해 배열의 합을 계산해준다.
my_string.split(whereSeparator: { !$0.isNumber }).reduce(0) { $0 + Int($1)! }
/// 여기서 배열의 각 요소는 String이기 때문에 Int로 형 변환을 해주어야 한다. (강제언래핑)
/// 결과: 0 + 1 + 2 + 34 = 37

import Foundation

func solution(_ my_string:String) -> Int {
    my_string.split(whereSeparator: { !$0.isNumber }).reduce(0) { $0 + Int($1)! }
}


// MARK: - 1차 시도
/// 고차 함수를 사용하려 했지만, 사용을 제대로 못해서
/// 일단 생각나는 대로 풀었다.
/// 반례가 있어 일부 테스트 케이스를 통과하지 못했다.

var stringArray: [String] = my_string.map { String($0) }
    var newArray: [Int] = []
    var intArray: [Int] = []
    var tempString: String = ""
    
    for str in stringArray {
        if let intStr: Int = Int(str) { newArray.append(intStr) }
                                 else { newArray.append(-1) }
    }
    
    print(newArray)
    
    for value in newArray {
        if value == -1 {
            if let strToInt: Int = Int(tempString) {
                intArray.append(strToInt)
            } else { intArray.append(0) }
            tempString = ""
        } else {
            tempString += String(value)
        }
    }
    
    print(intArray)
    
    if intArray.isEmpty { return 0 }
    else { return intArray.reduce(0) { $0 + $1 } }