class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
    //    Time complexicity O(n2) and space compexicity O(n) 
    //   for  i in 0..<nums.count  {
    //      for  j in i+1..<nums.count {
    //         if nums[i] == nums[j] {
    //              return true
    //         }   
    //      }
    //  }
    //   return false

    //    Time and space compexicity O(n)
       var seen = [Int:Int]()
       for num in nums {
         seen[num,default: 0] += 1
         if seen[num] == 2 {
            return true
         }
       }
       return false 
    }
}
