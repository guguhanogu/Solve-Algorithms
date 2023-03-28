// MARK: - 개미 군단
/// 개미 군단이 사냥을 나가려고 합니다.
/// 개미군단은 사냥감의 체력에 딱 맞는 병력을 데리고 나가려고 합니다.
/// 장군개미는 5의 공격력을, 병정개미는 3의 공격력을 일개미는 1의 공격력을 가지고 있습니다.
/// 예를 들어 체력 23의 여치를 사냥하려고 할 때, 
/// 일개미 23마리를 데리고 가도 되지만, 
/// 장군개미 네 마리와 병정개미 한 마리를 데리고 간다면 더 적은 병력으로 사냥할 수 있습니다.
/// 사냥감의 체력 hp가 매개변수로 주어질 때, 사냥감의 체력에 딱 맞게 최소한의 병력을 구성하려면
/// 몇 마리의 개미가 필요한지를 return하도록 solution 함수를 완성해주세요.


import Foundation

enum Ant {
    case general
    case soldier
    case worker
}

extension Ant {
    var strikingPower: Int {
        switch self {
            case .general:
            return 5
            case .soldier:
            return 3
            case .worker:
            return 1
        }
    }
}

func solution(_ hp:Int) -> Int {

    var remainedHp: Int = hp
    var generalAnts: Int = 0
    var soldierAnts: Int = 0
    var workerAnts: Int = 0
    
    // General
    if remainedHp >= Ant.general.strikingPower {
        generalAnts = remainedHp / Ant.general.strikingPower
        remainedHp -= generalAnts * Ant.general.strikingPower
        // print("장군 개미 수: \(generalAnts)")
        // print("남은 HP: \(remainedHp)")
    }

    // Soldier
    if remainedHp >= Ant.soldier.strikingPower {
        soldierAnts = remainedHp / Ant.soldier.strikingPower
        remainedHp -= soldierAnts * Ant.soldier.strikingPower
        // print("병정 개미 수: \(soldierAnts)")
        // print("남은 HP: \(remainedHp)")
    }
    
    // Worker
    if remainedHp >= Ant.worker.strikingPower {
        workerAnts = remainedHp / Ant.worker.strikingPower
        remainedHp -= soldierAnts * Ant.worker.strikingPower
        // print("일 개미 수: \(workerAnts)")
        // print("남은 HP: \(remainedHp)")
    }
    
    // print("필요한 개미 수: \(generalAnts + soldierAnts + workerAnts)")
    
    return (generalAnts + soldierAnts + workerAnts)
}