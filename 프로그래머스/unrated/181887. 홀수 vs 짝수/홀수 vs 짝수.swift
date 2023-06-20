func solution(_ num_list: [Int]) -> Int {
    
    var odd: Int = 0
    var even: Int = 0
    
    for (index, num) in num_list.enumerated() {
        if index % 2 == 0 { odd += num }
        else { even += num } 
    }
    
    return odd > even ? odd : even
}