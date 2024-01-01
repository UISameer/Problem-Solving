import Foundation

extension BinaryInteger {
    var digits: [Int] {
        return String(describing: self).compactMap { Int(String($0)) }
    }
}

class Solution {
    func differenceOfSum(_ nums: [Int]) -> Int {
        let elementSum = nums.reduce(0){ $0 + $1 }
        let digitSum = nums.map{$0.digits}.flatMap{ $0 }.reduce(0){ $0 + $1 }
        return abs(elementSum - digitSum)
    }
    
//    func differenceOfSum(_ nums: [Int]) -> Int {
//        let sumArr = nums.reduce(0, +)
//        let sumArr1 = nums.description.compactMap { Int(String($0))}.reduce(0, +)
//        return sumArr - sumArr1
//    }
    
//    func differenceOfSum(_ nums: [Int]) -> Int {
//        var sum = 0
//        var sumDigit = 0
//        for i in 0 ..< nums.count {
//            sum += nums[i]
//            var n = nums[i]
//            while n > 0 {
//                sumDigit += n % 10
//                n = n / 10
//            }
//        }
//        return sum - sumDigit
//    }
    
//    func differenceOfSum(_ nums: [Int]) -> Int {
//        let sum = nums.reduce(0, +)
//        
//        var digitSum = 0
//        for num in nums {
//            if num < 10 {
//                digitSum += num
//            } else {
//                var num = num
//                while num > 0 {
//                    let k = num % 10
//                    digitSum += k
//                    num /= 10
//                }
//            }
//        }
//        return abs(sum - digitSum)
//    }
}

let nums = [1,2,3,4]
print(Solution().differenceOfSum(nums))
