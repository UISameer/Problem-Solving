import Foundation

class Solution {
    func trap(_ height: [Int]) -> Int {
        
        guard height.count > 0 else { return 0 }
        
        var left = 0
        var right = height.count - 1
        var leftMax = height[left]
        var rightMax = height[right]
        var res = 0
        
        while left < right {
            if height[left] < height[right] {
                leftMax = max(leftMax, height[left])
                res += leftMax - height[left]
                left += 1
            } else {
                rightMax = max(rightMax, height[right])
                res += rightMax - height[right]
                right -= 1
            }
        }
        return res
    }
}

//class Solution {
//    func trap(_ h: [Int]) -> Int {
//        var res = 0, stack = [Int]()
//        for i in h.indices {
//            while !stack.isEmpty && h[i] > h[stack.last!] {
//                let top = stack.removeLast()
//                if let l = stack.last {
//                    res += (i-l-1) * (min(h[i], h[l]) - h[top])
//                }
//            }
//            stack.append(i)
//        }
//        return res
//    }
//}

let height = [0,1,0,2,1,0,1,3,2,1,2,1]
print(Solution().trap(height))
