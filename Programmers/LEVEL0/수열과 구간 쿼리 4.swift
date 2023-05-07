// MARK: - 수열과 구간 쿼리 4
/// 정수 배열 arr와 2차원 정수 배열 queries이 주어집니다.
/// queries의 원소는 각각 하나의 query를 나타내며, [s, e, k] 꼴입니다.
/// 각 query마다 순서대로 s ≤ i ≤ e인 모든 i에 대해 i가 k의 배수이면 arr[i]에 1을 더합니다.
/// 위 규칙에 따라 queries를 처리한 이후의 arr를 return 하는 solution 함수를 완성해 주세요.

func solution(_ arr: [Int], _ queries: [[Int]]) -> [Int] {
    
    var result: [Int] = arr
    
    for query in queries {
        /// queries에서 각 query 마다
        /// s, e, k를 뽑아낸다.
        let s: Int = query[0]
        let e: Int = query[1]
        let k: Int = query[2]
        
        /// s ≤ i ≤ e인 모든 i에 대해
        for i in s...e {
            /// i가 k의 배수이면 arr[i]에 1을 더합니다.
            if i % k == 0 { result[i] += 1 }
        }
    }
        
    return result
}