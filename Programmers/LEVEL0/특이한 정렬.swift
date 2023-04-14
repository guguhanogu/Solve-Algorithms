// MARK: - 특이한 정렬
/// 정수 n을 기준으로 n과 가까운 수부터 정렬하려고 합니다.
/// 이때 n으로부터의 거리가 같다면 더 큰 수를 앞에 오도록 배치합니다.
/// 정수가 담긴 배열 numlist와 정수 n이 주어질 때
/// numlist의 원소를 n으로부터 가까운 순서대로 정렬한 배열을 return하도록 solution 함수를 완성해주세요.

// MARK: 3회차
/// numlist의 원소 개수가 1개일 때는
/// numList.remove와 distance.remove를 쓸 수 없으므로
/// 그에 따른 분기처리를 해줘야 한다.
/// guard문으로 numlist의 원소 개수가 1개일 때를 예외처리 해주어 성공했다.
import Foundation

func solution(_ numlist:[Int], _ n:Int) -> [Int] {
    
    /// numlist의 원소 개수가 2개 이상이라면, 아래 코드를 실행하고,
    /// 그렇지 않으면(원소 개수가 1개라면) numlist를 그대로 return 한다.
    guard numlist.count > 1 else { return numlist }
    
    var numList: [Int] = numlist.sorted(by: >)  /// 거리가 같다면 더 큰 수를 앞에 오도록 배치하기 위해, 내림차순으로 정렬한다.
    var distance: [Int] = []                    /// 거리를 나타내줄 배열
    var result: [Int] = []                      /// 결과를 담아줄 배열

    /// n을 기준으로 numList 원소와의 거리를 계산한다.    
    for num in numList {
        distance.append(abs(num - n))
    }
    
    /// 배열의 원소가 1개일 때 remove를 실행하면 core dump가 일어나므로
    /// numlist.count - 1번 만큼 수행한다.
    for _ in 1...numlist.count - 1 {
        let minIndex: Int = distance.firstIndex(of: distance.min()!)!   /// distance에서 가장 작은(가장 가까운) 값의 인덱스를 저장한다.
        result.append(numList[minIndex])                                /// result에 가장 가까운 수를 저장하고,
        numList.remove(at: minIndex)                                    /// numList와 distance에서
        distance.remove(at: minIndex)                                   /// 저장한 값을 삭제한다.
    }
    
    let minIndex: Int = distance.firstIndex(of: distance.min()!)!       /// distance에서 가장 작은(가장 가까운) 값의 인덱스를 저장한다.
    result.append(numList[minIndex])                                    /// result에 가장 가까운 수를 저장한다.

    return result                                                       /// 완성된 result를 return한다.
}

// MARK: 2회차
/// 테케 하나에서 오류가 났다.
/// 생각해보니, numlist의 원소 개수가 1개일 때는
/// numList.remove와 distance.remove를 쓸 수 없으므로
/// 그에 따른 분기처리를 해줘야 될 것 같다.
import Foundation

func solution(_ numlist:[Int], _ n:Int) -> [Int] {
    
    var numList: [Int] = numlist.sorted(by: >)
    var distance: [Int] = []
    var result: [Int] = []
        
    for num in numList {
        distance.append(abs(num - n))
    }
    
    for _ in 1...numlist.count - 1 {
        let minIndex: Int = distance.firstIndex(of: distance.min()!)!
        result.append(numList[minIndex])
        numList.remove(at: minIndex)
        distance.remove(at: minIndex)
    }
    
    let minIndex: Int = distance.firstIndex(of: distance.min()!)!
    result.append(numList[minIndex])

    return result
}


// MARK: 1회차
/// core dump 오류가 발생했다.
/// 한 단계 씩 코드를 돌려보니
/// 배열의 원소 개수가 1개일 때 remove(at: )을 사용하니 에러가 발생했다.
/// for문의 수행횟수를 1 감소시키고, 
/// for문 안의 코드 중 remove를 제외한 코드만 한 번 더 실행시키면 될 것 같다.

import Foundation

func solution(_ numlist:[Int], _ n:Int) -> [Int] {
    
    var numList: [Int] = numlist.sorted(by: >)
    var distance: [Int] = []
    var result: [Int] = []
        
    for num in numList {
        distance.append(abs(num - n))
    }
    
    for _ in 1...numlist.count {
        let minIndex: Int = distance.firstIndex(of: distance.min()!)!
        result.append(numList[minIndex])
        numList.remove(at: minIndex)
        distance.remove(at: minIndex)
    }

    return result
}