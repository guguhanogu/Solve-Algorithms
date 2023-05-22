// MARK: - 주사위 게임 3
/// 1부터 6까지 숫자가 적힌 주사위가 네 개 있습니다.
/// 네 주사위를 굴렸을 때 나온 숫자에 따라 다음과 같은 점수를 얻습니다.

/// - 네 주사위에서 나온 숫자가 모두 p로 같다면 1111 × p점을 얻습니다.
/// - 세 주사위에서 나온 숫자가 p로 같고 나머지 다른 주사위에서 나온 숫자가 q(p ≠ q)라면 (10 × p + q)2 점을 얻습니다.
/// - 주사위가 두 개씩 같은 값이 나오고, 나온 숫자를 각각 p, q(p ≠ q)라고 한다면 (p + q) × |p - q|점을 얻습니다.
/// - 어느 두 주사위에서 나온 숫자가 p로 같고 나머지 두 주사위에서 나온 숫자가 각각 p와 다른 q, r(q ≠ r)이라면 q × r점을 얻습니다.
/// - 네 주사위에 적힌 숫자가 모두 다르다면 나온 숫자 중 가장 작은 숫자 만큼의 점수를 얻습니다.

/// 네 주사위를 굴렸을 때 나온 숫자가 정수 매개변수 a, b, c, d로 주어질 때, 얻는 점수를 return 하는 solution 함수를 작성해 주세요.

import Foundation

func solution(_ a: Int, _ b: Int, _ c: Int, _ d: Int) -> Int {
    
    /// 네 주사위에서 나온 숫자가 모두 p로 같다면 1111 × p점을 얻습니다.
    if a == b, b == c, c == d { return 1111 * a }
    
    /// 세 주사위에서 나온 숫자가 p로 같고 나머지 다른 주사위에서 나온 숫자가 q(p ≠ q)라면 (10 × p + q)2 점을 얻습니다.
    else if a == b, b == c { return (10 * a + d) * (10 * a + d) }
    else if a == b, b == d { return (10 * a + c) * (10 * a + c) }
    else if a == c, c == d { return (10 * a + b) * (10 * a + b) }
    else if b == c, c == d { return (10 * b + a) * (10 * b + a) }
    
    /// 주사위가 두 개씩 같은 값이 나오고, 나온 숫자를 각각 p, q(p ≠ q)라고 한다면 (p + q) × |p - q|점을 얻습니다.
    else if a == b, c == d { return (a + c) * abs(a - c) }
    else if (a == c && b == d) || (a == d && b == c)  { return (a + b) * abs(a - b) }
    
    /// 어느 두 주사위에서 나온 숫자가 p로 같고 나머지 두 주사위에서 나온 숫자가 각각 p와 다른 q, r(q ≠ r)이라면 q × r점을 얻습니다.
    else if a == b, c != d { return c * d }
    else if a == c, b != d { return b * d }
    else if a == d, b != c { return b * c }
    else if b == c, a != d { return a * d }
    else if b == d, a != c { return a * c }
    else if c == d, a != b { return a * b }
    
    /// 네 주사위에 적힌 숫자가 모두 다르다면 나온 숫자 중 가장 작은 숫자 만큼의 점수를 얻습니다.
    else { return min(a, b, c, d) }
}