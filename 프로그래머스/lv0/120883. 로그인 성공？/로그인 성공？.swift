func solution(_ id_pw: [String], _ db: [[String]]) -> String {
    
    for data in db {
        // db 내에 아이디가 일치하는 회원이 있고,
        if data[0] == id_pw[0] {
            
            // 아이디와 비밀번호가 모두 일치하는 회원정보가 있으면
            if data[1] == id_pw[1] {
                // login을 return 합니다.
                return "login"
            // 아이디는 일치하지만 비밀번호가 일치하는 회원이 없다면    
            } else {
                // worng pw를 return 합니다.
                return "wrong pw"
            }
        }
    }
    
    // db 내에 아이디가 일치하는 회원정보가 없으므로,
    // fail를 return 합니다.
    return "fail"
}