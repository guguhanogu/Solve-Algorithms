// MARK: - 배열 만들기 2
/// 정수 l과 r이 주어졌을 때,
/// l 이상 r이하의 정수 중에서 숫자 "0"과 "5"로만 이루어진 모든 정수를
/// 오름차순으로 저장한 배열을 return 하는 solution 함수를 완성해 주세요.
/// 만약 그러한 정수가 없다면, -1이 담긴 배열을 return 합니다.

func solution(_ l: Int, _ r: Int) -> [Int] {
    
    /// l 이상 r 이하의 정수 중
    let result = (l...r).filter {
        /// 1. 정수를 String으로 변환한다.
        /// 2. 문자열 안에 0, 5가 포함되어 있지 않은 값을 filter
        /// 3. 해당 값이 비어있는 정수를 filter
        String($0).filter { $0 != "0" && $0 != "5" }.isEmpty
    }
    
    /// result가 비어있으면 -1을 return, 아니라면 result return.
    return result.isEmpty ? [-1] : result
}