/* Given a string, find the length of the longest substring without repeating characters.

Example 1:

Input: "abcabcbb"
Output: 3
Explanation: The answer is "abc", with the length of 3.
Example 2:

Input: "bbbbb"
Output: 1
Explanation: The answer is "b", with the length of 1.
Example 3:

Input: "pwwkew"
Output: 3
Explanation: The answer is "wke", with the length of 3.
Note that the answer must be a substring, "pwke" is a subsequence and not a substring. */

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var maxLength = 0
        var i = 0
        var dict: [Character : Int] = [:]
        for (j, c) in s.enumerated() {
            if let duplicateIndex = dict[c] {
                i = max(duplicateIndex, i)
            }
            let length = j - i + 1
            maxLength = max(length, maxLength)
            dict[c] = j + 1
        }
        return maxLength
    }
}
