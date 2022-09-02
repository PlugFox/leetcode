/*
 * 9. Palindrome Number
 * 
 * Given an integer x, return true if x is palindrome integer.
 * 
 * An integer is a palindrome when it reads the same backward as forward.
 * 
 * For example, 121 is a palindrome while 123 is not.
 *  
 * 
 * Example 1:
 * 
 * Input: x = 121
 * Output: true
 * Explanation: 121 reads as 121 from left to right and from right to left.
 * 
 * 
 * Example 2:
 * 
 * Input: x = -121
 * Output: false
 * Explanation: From left to right, it reads -121. From right to left,
 * it becomes 121-. Therefore it is not a palindrome.
 * 
 * 
 * Example 3:
 * 
 * Input: x = 10
 * Output: false
 * Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
 *  
 * 
 * Constraints:
 * 
 * -2^31 <= x <= 2^31 - 1
 *  
 * 
 * Follow up: Could you solve it without converting the integer to a string?
 */

class Solution {
  bool isPalindrome(int x) {
    if (x > -1 && x < 10) return true;
    if (x.isNegative || x % 10 == 0) return false;
    final chars = x.toString().codeUnits;
    final length = chars.length, middle = chars.length / 2;
    for (var i = 0; i < middle; i++) if (chars[i] != chars[length - i - 1]) return false;
    return true;
  }
}
