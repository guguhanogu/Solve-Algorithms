// MARK: - A로 B 만들기
/// 문자열 before와 after가 매개변수로 주어질 때,
/// before의 순서를 바꾸어 after를 만들 수 있으면 1을,
/// 만들 수 없으면 0을 return 하도록 solution 함수를 완성해보세요.

import Foundation

func solution(_ before:String, _ after:String) -> Int {
    
    /// before와 after를 모두 배열로 쪼갠다.
    var beforeArray: [String] = before.map { String($0) }
    var afterArray: [String] = after.map { String($0) }
    
    /// 정렬을 해준다.
    beforeArray.sort()
    afterArray.sort()
    
    /// 두 배열이 같으면 1을, 다르면 0을 return 해준다.
    if beforeArray == afterArray {
        return 1
    } else {
        return 0
    } 
}