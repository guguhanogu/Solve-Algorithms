// MARK: - 가까운 수
/// 정수 배열 array와 정수 n이 매개변수로 주어질 때,
/// array에 들어있는 정수 중 n과 가장 가까운 수를 return 하도록 solution 함수를 완성해주세요.

// 제한사항
/// 1 ≤ array의 길이 ≤ 100
/// 1 ≤ array의 원소 ≤ 100
/// 1 ≤ n ≤ 100
/// 가장 가까운 수가 여러 개일 경우 더 작은 수를 return 합니다.

// 입출력 예
/// array	    n	result
/// [3, 10, 28]	20	28

// PS: - 추신
/// 머리가 잘 안 돌아갈 때 풀어서 그런지
/// 조금 무식하게 푼 경향이 있다.
/// 코드를 더 깔끔하게 풀 수 있는 지 확인해 볼 것.


import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    
    var compareArray: [Int] = []        // n과의 거리를 담을 배열
    var closerNumberArray: [Int] = []   // n과 가까운 수를 담을 배열
    var minValue: Int = 101             // 최소값 비교를 위한 값
    
    // STEP 1. array의 각 원소별 거리 구하기. 
    for number in array {
        
        var temp: Int = 0
        
        temp = n - number               // array의 각 값과 n의 차이를 구한다.
        if temp < 0 { temp *= -1 }      // 그 값이 음수라면 -1을 곱해 양수로 만든다.
        
        compareArray.append(temp)       // 값을 compareArray에 담는다.
    }
    
    // STEP 2. 가장 가까운 거리 구하기.
    for value in compareArray {
        if value < minValue { minValue = value }  // 가장 가까운 거리(최소값)을 찾는다.
    }
    
    // STEP 3. 가장 가까운 거리에 해당하는 인덱스 값을 참조하여
    //         array에서 가장 가까운 수를 closerNumberArray에 담는다.
    for (index, value) in compareArray.enumerated() {
        if value == minValue { closerNumberArray.append(array[index]) }
    }
    
    // STEP 4. 가까운 수 구하기.
    if closerNumberArray.count > 1 {        // 가까운 수가 여러 개 있다면,
        closerNumberArray.sort()            // closerNumberArray를 오름차순 정렬하여
        return closerNumberArray[0]         // 첫 번째 값을 return 한다.
    } else { return closerNumberArray[0] }  // 가까운 수가 하나라면, 그 값을 return 한다.
}

// ChatGPT가 다듬어준 코드
import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    // 각 요소와 n과의 차이를 구하여 새로운 배열에 저장
    let compareArray = array.map { abs(n - $0) }
    // 가장 작은 값을 찾음 (배열이 비어있지 않다는 가정)
    let minValue = compareArray.min()!
     // minValue와 같은 값을 가진 요소들을 찾아서 새로운 배열에 저장
    let closerNumberArray = array.filter { abs(n - $0) == minValue }
    
    // closerNumberArray의 최솟값을 반환 (closerNumberArray는 비어있지 않다는 가정)
    return closerNumberArray.min()!
}

// ChatGPT의 풀이
import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    // 배열을 n과의 차이를 기준으로 정렬하여 새로운 배열에 저장합니다.
    let sortedArray = array.sorted { abs($0 - n) < abs($1 - n) }
    // 가장 작은 차이를 가지는 첫 번째 값을 반환합니다.
    return sortedArray[0]
}

// 다른 사람들의 풀이

func solution(_ array:[Int], _ n:Int) -> Int {
    return array.min(by: { (abs($0 - n), $0) < (abs($1 - n), $1) })!
}

/// 이 코드는 Swift에서 배열(array)에서 최솟값(min)을 찾는 것입니다.
/// 이때, 배열의 각 요소는 숫자(n)입니다.
/// min 메서드는 배열의 요소 중 최솟값을 반환합니다.
/// 이때, 최솟값을 비교하는 방식을 클로저(closure)로 지정할 수 있습니다.
/// 이 코드에서는 최솟값을 비교하는 방법을 정의하기 위해 클로저를 사용합니다.
/// 이 클로저는 배열의 두 요소를 비교하고,
/// 이들 각각의 숫자와 n과의 차이를 비교하여 가장 작은 차이를 가진 요소를 찾습니다.
/// 따라서, (abs($0 - n), $0) < (abs($1 - n), $1)는 
/// 두 요소($0과 $1)와 n과의 차이를 구하고, 
/// 이들 차이의 절댓값과 요소 자체의 값을 튜플(tuple)로 묶어 비교하는 조건입니다.
/// 이 조건이 true인 경우, ($0, abs($0 - n))이 ($1, abs($1 - n))보다 작은 값으로 간주되고,
/// 이때 $0이 최솟값으로 반환됩니다.
