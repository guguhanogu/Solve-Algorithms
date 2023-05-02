// MARK: - 이어 붙인 수
/// 정수가 담긴 리스트 num_list가 주어집니다.
/// num_list의 홀수만 순서대로 이어 붙인 수와
/// 짝수만 순서대로 이어 붙인 수의 합을 return하도록 solution 함수를 완성해주세요.

func solution(_ num_list: [Int]) -> Int {
    /// 1. num_list의 홀수 또는 짝수로만 뽑아낸다. (filter)
    /// 2. 그 수들을 String으로 변환하여 합친다.   (map, joined())
    /// 3. 그 값을 Int로 변환한다.
    /// 4. 두 값을 더한다.
    Int(num_list.filter { $0 % 2 != 0 }.map { String($0) }.joined())! +
    Int(num_list.filter { $0 % 2 == 0 }.map { String($0) }.joined())!
}