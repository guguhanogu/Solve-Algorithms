// MARK: - 한 번만 등장한 문자
/// 문자열 s가 매개변수로 주어집니다.
/// s에서 한 번만 등장하는 문자를 사전 순으로 정렬한 문자열을 return 하도록 solution 함수를 완성해보세요.
/// 한 번만 등장하는 문자가 없을 경우 빈 문자열을 return 합니다.


import Foundation

func solution(_ s:String) -> String {

    var stringArray: [String] = s.map { String($0) }.sorted() /// s 문자열을 배열로 쪼갠다.
    var countArray: [Int] = []                                /// 각 문자가 몇 번 나왔는 지 세 줄 배열
    var uniqueStringArray: [String] = []                      /// 한 번만 등장한 문자를 담아줄 배열
    
    for str in stringArray {                     /// stringArray의 각 문자를 탐색하여
        var strCount: Int = 0

        for string in stringArray {              /// 각 문자가 몇 번 등장했는지 count 한다.
            if str == string { strCount += 1 }
        }        
        countArray.append(strCount)              /// count를 다 했으면, countArray에 값을 넣어준다.
    }
    
    /// countArray에서 count가 1인 인덱스를 찾고
    /// 그 인덱스에 해당하는 stringArray의 값을 uniqueStringArray에 담는다.
    for (index, count) in countArray.enumerated() {
        if count == 1 { uniqueStringArray.append(stringArray[index]) }
    }

    /// uniqueStringArray를 정렬하고 String으로 join하여 return.
    return uniqueStringArray.sorted().joined()
}