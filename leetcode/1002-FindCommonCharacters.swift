/* Given an array A of strings made only from lowercase letters,
return a list of all characters that show up in all strings within the list (including duplicates).
For example, if a character occurs 3 times in all strings but not 4 times,
you need to include that character three times in the final answer.

You may return the answer in any order.

Example 1:

Input: ["bella","label","roller"]
Output: ["e","l","l"]
 
Example 2:

Input: ["cool","lock","cook"]
Output: ["c","o"]

Note:

1 <= A.length <= 100
1 <= A[i].length <= 100
A[i][j] is a lowercase letter */

class Solution {
    func commonChars(_ A: [String]) -> [String] {
        var chars = Array(A[0])
        for i in 1..<A.count {
            var str = A[i]
            var newChars = [Character]()
            for char in chars {
                guard let index = str.firstIndex(of: char) else { continue }
                newChars.append(char)
                str.remove(at: index)
            }
            chars = newChars
        }
        return chars.map { $0.description }
    }
}
