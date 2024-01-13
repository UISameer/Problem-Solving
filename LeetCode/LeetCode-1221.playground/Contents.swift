import Foundation

class Solution {
    func balancedStringSplit(_ s: String) -> Int {
        var b = 0, res = 0
        s.forEach({
            $0 == "R" ? b += 1 : (b -= 1)
            b == 0 ? res += 1 : nil
        })
        return res
    }
}

//func balancedStringSplit(_ s: String) -> Int {
//    
//    var balance = 0
//    var count = 0
//    
//    for i in s {
//        if i == "R" {
//            balance += 1
//        } else {
//            balance -= 1
//        }
//        
//        if balance == 0 {
//            count += 1
//        }
//    }
//    return count
//}

//class Solution {
//    func balancedStringSplit(_ s: String) -> Int {
//        return s.reduce(into: (Int(0), Int(0), Int(0)), { if $1 == "R" { $0.1 += 1 } else { $0.2 += 1 }; if $0.1 == $0.2 { $0.0 += 1 } }).0
//    }
//}

//class Solution {
//    func balancedStringSplit(_ s: String) -> Int {
//        var charArray = Array(s)
//        var result = 0
//        var counterL = 0
//        var counterR = 0
//        for i in 0..<charArray.count {
//            if charArray[i] == "L" {
//                counterL += 1
//            } else if charArray[i] == "R" {
//                counterR += 1
//            }
//            if counterL == counterR {
//                result += 1
//                counterL = 0
//                counterR = 0
//            }
//        }
//        return result
//    }
//}

let s = "RLRRLLRLRL"
print(Solution().balancedStringSplit(s))

