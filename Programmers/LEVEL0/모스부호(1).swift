// MARK: - 모스부호(1)
/// 머쓱이는 친구에게 모스부호를 이용한 편지를 받았습니다.
/// 그냥은 읽을 수 없어 이를 해독하는 프로그램을 만들려고 합니다.
/// 문자열 letter가 매개변수로 주어질 때,
/// letter를 영어 소문자로 바꾼 문자열을 return 하도록 solution 함수를 완성해보세요.

// MARK: Components  vs.  Split
/// 둘 다 비슷한 기능을 하지만,
/// Components는 [String]을 반환하지만 Foundation을 import 해야한다.
/// Split은 [SubString]을 반환하지만 기본 라이브러리에서 제공해주기 때문에 Foundation을 import하지 않아도 된다.

import Foundation

func solution(_ letter:String) -> String {
    
    // 모스부호는 다음과 같습니다.
    /// 딕셔너리로 변환.
    let morseDictionary: [String: String] = [ 
    ".-": "a", "-...": "b", "-.-.": "c", "-..": "d", ".": "e", "..-.": "f", 
    "--.": "g", "....": "h", "..": "i", ".---": "j", "-.-": "k", ".-..": "l", 
    "--": "m", "-.": "n", "---": "o", ".--.": "p", "--.-": "q", ".-.": "r", 
    "...": "s", "-": "t", "..-": "u", "...-": "v", ".--": "w", "-..-": "x", 
    "-.--": "y", "--..": "z"
    ]
    
    /// letter를 공백을 기준으로 배열로 자른다.
    let componentsLetter: [String] = letter.components(separatedBy: " ")
    var result: String = ""
    
    /// 해당 모스 부호(Key 값)에 해당하는 알파벳(Value 값)을 result에 더해준다.
    for morse in componentsLetter {
        if let str = morseDictionary[morse] {
            result += str   
        }
    }
    
    return result
}