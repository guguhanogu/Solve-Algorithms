// MARK: - 문자열 앞의 n글자
/// 문자열 my_string과 정수 n이 매개변수로 주어질 때,
/// my_string의 앞의 n글자로 이루어진 문자열을 return 하는 solution 함수를 작성해 주세요.

func solution(_ my_string: String, _ n: Int) -> String {
    String(my_string[...my_string.index(my_string.startIndex, offsetBy: n - 1)])
}