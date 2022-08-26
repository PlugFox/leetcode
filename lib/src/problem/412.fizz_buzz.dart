/*
 * 412. Fizz Buzz
 * 
 * Given an integer n, return a string array answer (1-indexed) where:
 * 
 * answer[i] == "FizzBuzz" if i is divisible by 3 and 5.
 * answer[i] == "Fizz" if i is divisible by 3.
 * answer[i] == "Buzz" if i is divisible by 5.
 * answer[i] == i (as a string) if none of the above conditions are true.
 *  
 * 
 * Example 1:
 * 
 * Input: n = 3
 * Output: ["1","2","Fizz"]
 * 
 * 
 * Example 2:
 * 
 * Input: n = 5
 * Output: ["1","2","Fizz","4","Buzz"]
 * 
 * 
 * Example 3:
 * 
 * Input: n = 15
 * Output: ["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14","FizzBuzz"]
 *  
 * 
 * Constraints:
 * 
 * 1 <= n <= 10^4
 */

class Solution {
  List<String> fizzBuzz(int n) => List<String>.generate(n, (idx) {
        final x = idx + 1;
        final buffer = StringBuffer();
        if (x % 3 == 0) buffer.write('Fizz');
        if (x % 5 == 0) buffer.write('Buzz');
        if (buffer.isEmpty) buffer.write(x);
        return buffer.toString();
      });
}
