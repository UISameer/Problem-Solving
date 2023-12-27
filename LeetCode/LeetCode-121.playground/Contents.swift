import UIKit

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        
        var leastSoFar = Int.max
        var maxProfit = 0
        
        prices.forEach { price in
            leastSoFar = min(leastSoFar, price)
            maxProfit = max(maxProfit, price - leastSoFar)
        }
        return maxProfit
    }
}

var prices = [7,6,4,3,1]
print(Solution().maxProfit(prices))


