/* Implement strStr().

Return the index of the first occurrence of needle in haystack,
or -1 if needle is not part of haystack.

Example 1:

Input: haystack = "hello", needle = "ll"
Output: 2
Example 2:

Input: haystack = "aaaaa", needle = "bba"
Output: -1
Clarification:

What should we return when needle is an empty string?
This is a great question to ask during an interview.

For the purpose of this problem, we will return 0 when needle is an empty string.
This is consistent to C's strstr() and Java's indexOf(). */

class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        guard !needle.isEmpty else { return 0 }
        guard needle.count <= haystack.count else { return -1 }
        guard needle.count != haystack.count else { return needle == haystack ? 0 : -1 }
        
        let haystack = Array(haystack)
        let needle = Array(needle)
        
        for i in 0...haystack.count - needle.count {
            for j in 0..<needle.count {
                if haystack[i + j] != needle[j] {
                    break
                }
                if j == needle.count - 1 {
                    return i
                }
            }
        }
        return -1
    }
}
