class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {

      var charDict = [Character: Int]()
      for char in  s {
         charDict[char,default:0] += 1
      }

      for char in t {
         charDict[char,default:0] -= 1
      }

      for value in charDict.values {
         if value != 0 {
            return false
         } 
      }
      return true
    }


   //  print(isAnagram("jigs","kavu"))
}
