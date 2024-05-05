class Solution {
    func buildArray(_ nums: [Int]) -> [Int] {
        var ans: [Int] = []
        for (index, element) in nums.enumerated(){
            ans.append(nums[element])
        }
        
        return ans
    }
}

let sol = Solution()
print(sol.buildArray([5,0,1,2,3,4]))
