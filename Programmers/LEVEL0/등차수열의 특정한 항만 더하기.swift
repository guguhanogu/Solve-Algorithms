// MARK: - 등차수열의 특정한 항만 더하기
/// 두 정수 a, d와 길이가 n인 boolean 배열 included가 주어집니다.
/// 첫째항이 a, 공차가 d인 등차수열에서 included[i]가 i + 1항을 의미할 때,
/// 이 등차수열의 1항부터 n항까지 included가 true인 항들만 더한 값을 return 하는 solution 함수를 작성해 주세요.

func solution(_ a:Int, _ d:Int, _ included:[Bool]) -> Int {
    /// 결과값을 담아줄 변수
    var result: Int = 0
    
    for (index, bool) in included.enumerated() {

        /// bool이 true인 항의 값만 result에 더해준다.
        if bool { result += a + index * d }
    }
    
    return result
}