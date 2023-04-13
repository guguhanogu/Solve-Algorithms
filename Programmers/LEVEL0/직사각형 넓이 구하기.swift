// MARK: - 직사각형 넓이 구하기
/// 2차원 좌표 평면에 변이 축과 평행한 직사각형이 있습니다.
/// 직사각형 네 꼭짓점의 좌표 [[x1, y1], [x2, y2], [x3, y3], [x4, y4]]가 
/// 담겨있는 배열 dots가 매개변수로 주어질 때, 직사각형의 넓이를 return 하도록 solution 함수를 완성해보세요.

import Foundation

func solution(_ dots:[[Int]]) -> Int {
    
    var xValues: [Int] = []             /// dots에서 x 값을 담아줄 배열
    var yValues: [Int] = []             /// dots에서 y 값을 담아줄 배열
    
    for coordinate in dots {
        xValues.append(coordinate[0])   /// dots에서 x 값을 담아준다.
        yValues.append(coordinate[1])   /// dots에서 y 값을 담아준다.
    }
    
    let xMax: Int = xValues.max()!      /// x값 중 최대값을 저장한다.
    let yMax: Int = yValues.max()!      /// y값 중 최대값을 저장한다.
    let xMin: Int = xValues.min()!      /// x값 중 최소값을 저장한다.
    let yMin: Int = yValues.min()!      /// y값 중 최소값을 저장한다.
    
    /// 최대값에서 최소값을 뺀 후, 그 값이 음수라면 -1을 곱해주고 양수라면 그대로 저장
    let xLength: Int = (xMax - xMin) > 0 ? xMax - xMin : (xMax - xMin) * -1
    let yLength: Int = (yMax - yMin) > 0 ? yMax - yMin : (yMax - yMin) * -1
    
    /// 두 값을 곱해서 넓이를 return한다.
    return xLength * yLength
}