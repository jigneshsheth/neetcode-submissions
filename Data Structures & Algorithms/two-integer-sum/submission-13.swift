class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {

       var indices = [Int:Int] () 

       for (i,n) in nums.enumerated(){
         indices[n] = i
       } 

       for (i,n) in nums.enumerated() {
        let diff:Int = target - n
        if let j = indices[diff], j != i {
            return [i,j]
        } 
       }

       return []  
    }
}
