// MARK: - 조건에 맞게 수열 변환하기 1
/// 정수 배열 arr가 주어집니다.
/// arr의 각 원소에 대해 값이 50보다 크거나 같은 짝수라면 2로 나누고,
/// 50보다 작은 홀수라면 2를 곱합니다.
/// 그 결과인 정수 배열을 return 하는 solution 함수를 완성해 주세요.

func solution(_ arr: [Int]) -> [Int] {
    
    var result: [Int] = []
    
    /// arr의 각 원소에 대해
    for num in arr {
        /// 값이 50보다 크거나 같은 짝수라면 2로 나누고,
        if num >= 50, num % 2 == 0 { result.append(num / 2) }
        /// 50보다 작은 홀수라면 2를 곱합니다.
        else if num < 50, num % 2 != 0 { result.append(num * 2) }
        /// 그렇지 않은 값은 그대로 냅둡니다.
        else { result.append(num) }
    }
    
    /// 그 결과인 정수 배열을 return 합니다.
    return result
}

// 고차함수를 이용한 다른 풀이
func solution(_ arr: [Int]) -> [Int] {
    return arr.map {
        if $0 >= 50, $0 % 2 == 0 { return $0 / 2 }
        if $0 < 50, $0 % 2 != 0 { return $0 * 2 }
        return $0
    }
}