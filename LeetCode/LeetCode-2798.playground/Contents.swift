import Foundation

class Solution {
    func numberOfEmployeesWhoMetTarget(_ hours: [Int], _ target: Int) -> Int {
        
        var output = 0
        output = hours.filter{ $0 >= target }.count
        return output
    }
    
//    func numberOfEmployeesWhoMetTarget(_ hours: [Int], _ target: Int) -> Int {
//        var count = 0
//        for i in 0 ..< hours.count {
//            if hours[i] >= target {
//                count += 1
//            }
//        }
//        return count
//    }
}

var hours = [5,1,4,2,2], target = 6
print(Solution().numberOfEmployeesWhoMetTarget(hours, target))
