func solution(_ todo_list: [String], _ finished: [Bool]) -> [String] {
    
    var result: [String] = []
    
    for (index, isFinished) in finished.enumerated() {
        if !isFinished { result.append(todo_list[index]) }
    }

    return result
}