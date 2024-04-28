import UIKit

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var numIndexMap: [Int: Int] = [:]
        
        for (index, num) in nums.enumerated(){
            let complement = target - num
            
            if let complementIndex = numIndexMap[complement] {
                return [complementIndex, index]
            }
            
            numIndexMap[num] = index
            print(numIndexMap[num] ?? -1)
        }
        return  []
    }
}

let solution = Solution()
print(solution.twoSum([2,7,11,15], 9))

