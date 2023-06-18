func solution(_ arr: [Int], _ n: Int) -> [Int] {
    
    var result: [Int] = arr
    var isOdd: Bool = arr.count % 2 == 0 ? false : true
    
    for (index, _) in arr.enumerated() {
        if isOdd {
            // arr의 길이가 홀수라면
            // arr의 모든 짝수 인덱스 위치에 n을 더함
            if index % 2 == 0 { result[index] += n }
        } else {
            // arr의 길이가 짝수라면
            // arr의 모든 홀수 인덱스 위치에 n을 더함
            if index % 2 != 0 { result[index] += n }
        }
    }

    return result
}