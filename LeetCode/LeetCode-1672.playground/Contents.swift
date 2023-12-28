import Foundation

class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        var maxAccount = 0
        
        accounts.forEach { account in
            let wealth = account.reduce(0){$0 + $1}
            maxAccount = max(maxAccount, wealth)
        }
        
        return maxAccount
    }
    
//    func maximumWealth(_ accounts: [[Int]]) -> Int {
//        return accounts.reduce(0, { max($0, $1.reduce(0, +)) })
//    }
    
//    func maximumWealth(_ accounts: [[Int]]) -> Int {
//        accounts.map { $0.reduce(0, +) }.max() ?? 0
//    }
}

var accounts = [[2,8,7],[7,1,3],[1,9,5]]
print(Solution().maximumWealth(accounts))
