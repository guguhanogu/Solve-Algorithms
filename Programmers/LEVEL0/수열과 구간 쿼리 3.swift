// MARK: - 수열과 구간 쿼리 3
/// 정수 배열 arr와 2차원 정수 배열 queries이 주어집니다.
/// queries의 원소는 각각 하나의 query를 나타내며, [i, j] 꼴입니다.

/// 각 query마다 순서대로 arr[i]의 값과 arr[j]의 값을 서로 바꿉니다.

/// 위 규칙에 따라 queries를 처리한 이후의 arr를 return 하는 solution 함수를 완성해 주세요.

func solution(_ arr: [Int], _ queries: [[Int]]) -> [Int] {
    /// 결과값을 담을 변수
    var result: [Int] = arr
    
    for query in queries {
        let tempA: Int = result[query[0]]   /// arr[i]
        let tempB: Int = result[query[1]]   /// arr[j]
        
        result[query[0]] = tempB            /// 두 값을
        result[query[1]] = tempA            /// 바꾼다!
    }
    
    /// 결과값 반환
    return result
}