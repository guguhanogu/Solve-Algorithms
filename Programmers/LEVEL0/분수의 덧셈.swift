// MARK: - 분수의 덧셈
/// 첫 번째 분수의 분자와 분모를 뜻하는 numer1, denom1,
/// 두 번째 분수의 분자와 분모를 뜻하는 numer2, denom2가 매개변수로 주어집니다.
/// 두 분수를 더한 값을 기약 분수로 나타냈을 때
/// 분자와 분모를 순서대로 담은 배열을 return 하도록 solution 함수를 완성해보세요.

import Foundation

// 최대공약수
func gcd(_ a: Int, _ b: Int) -> Int{
    return b == 0 ? a : gcd(b, a % b)
}

func solution(_ numer1:Int, _ denom1:Int, _ numer2:Int, _ denom2:Int) -> [Int] {
    
    let maxNumer: Int = numer1 * denom2 + numer2 * denom1   /// 분자의 최대값을 구한다.
    let maxDenom: Int = denom1 * denom2                     /// 분모의 최대값을 구한다.
    let gcdValue: Int = gcd(maxNumer, maxDenom)             /// 두 값의 최대공약수를 구한다.
        
    return [maxNumer / gcdValue, maxDenom / gcdValue]       /// 두 값을 최대공약수로 나눈다.
}