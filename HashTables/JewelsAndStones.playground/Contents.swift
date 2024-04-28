class Solution {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        var jewelMap = [Character: Int]()
        for jewel in jewels {
            jewelMap[jewel, default: 0] += 1
        }
        print(jewelMap)
        var count = 0
        for stone in stones {
            if let value = jewelMap[stone], value > 0 {
                count += 1
            }
        }
        return count
    }
}

let sol = Solution()
print(sol.numJewelsInStones("z", "aAABBBbb"))
