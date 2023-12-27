import Foundation

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        
        guard prices.count != 0 else { return 0 }
        var profit = 0
        
        for index in stride(from: 0, to: prices.count - 1, by: 1) {
            if(prices[index] < prices[index + 1]) {
                profit += prices[index + 1] - prices[index]
            }
        }
        
        return profit
    }
}

var prices = [7,6,4,3,1]
print(Solution().maxProfit(prices))
