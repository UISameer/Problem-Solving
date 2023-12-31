import Foundation


class Solution {
    
    let dict = ["type": 0, "color": 1, "name": 2]
    
    func countMatches(_ items: [[String]], _ ruleKey: String, _ ruleValue: String) -> Int {
        var matches = 0
        guard let indexToMatch = dict[ruleKey] else { return 0 }
        
        for arr in items {
            if arr[indexToMatch] == ruleValue {
                matches += 1
            }
        }
        
        return matches
    }
    
//    func countMatches(_ items: [[String]], _ ruleKey: String, _ ruleValue: String) -> Int {
//        let rule = ruleKey == "type" ? 0 : (ruleKey == "color" ? 1 : 2)
//        return items.reduce(0) { $0 + ($1[rule] == ruleValue ? 1 : 0)}
//    }
    
//    func countMatches(_ items: [[String]], _ ruleKey: String, _ ruleValue: String) -> Int {
//        let dict = ["type": 0, "color": 1, "name": 2]
//        return items.filter { $0[dict[ruleKey]!] == ruleValue }.count
//    }
}

let items = [["phone","blue","pixel"],["computer","silver","phone"],["phone","gold","iphone"]], ruleKey = "type", ruleValue = "phone"

print(Solution().countMatches(items, ruleKey, ruleValue))
