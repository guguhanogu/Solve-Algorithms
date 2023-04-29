// MARK: - 등수 매기기
/// 영어 점수와 수학 점수의 평균 점수를 기준으로 학생들의 등수를 매기려고 합니다.
/// 영어 점수와 수학 점수를 담은 2차원 정수 배열 score가 주어질 때,
/// 영어 점수와 수학 점수의 평균을 기준으로 매긴 등수를 담은 배열을 return하도록 solution 함수를 완성해주세요.


// MARK: - 2회차



// MARK: - 1회차
/// 테스트 3, 테스트 6에서 실패했다.
import Foundation

func solution(_ score:[[Int]]) -> [Int] {
    
    var average: [Int] = []                                         /// 평균 점수를 담아줄 배열
    var result: [Int] = Array(repeating: 0, count: score.count)     /// 결과를 담아줄 배열, score의 개수만큼 0으로 초기화 한다.
    var rank: Int = 1                                               /// 등수
    
    for scoreSet in score { 
        average.append(scoreSet.reduce(0) { $0 + $1 } / 2)          /// average 배열에 각 학생의 평균 점수를 넣어준다.
    }
    
    /// result에 0이 았으면 반복한다.
    while result.contains(0) {
        
        let highScore: Int = average.max()!             /// 최고점수
        var duplicate: Int = 0                          /// 중복이 있는지 검사하기 위한 변수
        
        for (index, student) in average.enumerated() {  /// average를 탐색하여
            if student == highScore {                   /// 최고점과 같은 점수의 학생이 있으면
                result[index] = rank                    /// 해당 학생의 index와 일치한 result 배열에 랭킹을 업데이트 해준다.
                average[index] = -1                     /// 이미 조회한 average[index]는 -1로 업데이트 한다. (점수는 0점도 있을 수 있기 때문이다.)
                duplicate += 1                          /// 중복이 있는지 검사하기 위해 duplicate를 1 올려준다.
            }
        }
                                                        /// duplicate가 1 이상이면 중복이 있다는 뜻이므로, rank를 duplicate만큼 올리고
        rank += duplicate > 1 ? duplicate : 1           /// duplicate가 1이면 중복이 없다는 뜻이므로, rank를 1 올린다.
    }
    
    /// 결과를 return 한다.
    return result
}