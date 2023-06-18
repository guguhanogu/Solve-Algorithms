func solution(_ arr1: [Int], _ arr2: [Int]) -> Int {
    
    if arr1.count > arr2.count { return 1 }
    else if arr1.count < arr2.count { return -1 }
    else {
        let sumOfArr1 = arr1.reduce(0, +)
        let sumOfArr2 = arr2.reduce(0, +) 
        
        if sumOfArr1 > sumOfArr2 { return 1 }
        else if sumOfArr1 < sumOfArr2 { return -1 }
        else { return 0 }
    }
}