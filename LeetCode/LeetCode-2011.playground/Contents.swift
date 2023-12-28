import Foundation


class Solution {
    func finalValueAfterOperations(_ operations: [String]) -> Int {
        var finalValue = 0
        
        operations.forEach { operation in
            if(operation == "X++" || operation == "++X") {
                finalValue += 1
            } else {
                finalValue -= 1
            }
        }
        
        return finalValue
    }
    
    // FOREACH
//    func finalValueAfterOperations(_ operations: [String]) -> Int {
//        var x = 0
//        operations.forEach { x += $0.contains("+") ? 1 : -1 }
//        return x
//    }
    
    // MAP
//    func finalValueAfterOperations(_ operations: [String]) -> Int {
//        operations.map { $0.contains("++") ? 1 : -1 }.reduce(0, +)
//    }
}

var operations = ["++X","++X","X++"]
print(Solution().finalValueAfterOperations(operations))
