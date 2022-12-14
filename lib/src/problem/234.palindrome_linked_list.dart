/*
 * 234. Palindrome Linked List
 * 
 * Given the head of a singly linked list,
 * return true if it is a palindrome or false otherwise.
 * 
 * 
 * Example 1:
 * 
 * 
 * Input: head = [1,2,2,1]
 * Output: true
 * 
 * 
 * Example 2:
 * 
 * 
 * Input: head = [1,2]
 * Output: false
 *  
 * 
 * Constraints:
 * 
 * The number of nodes in the list is in the range [1, 10^5].
 * 0 <= Node.val <= 9
 *  
 * 
 * Follow up: Could you do it in O(n) time and O(1) space?
 */

import '../structure/list_node.dart';

class Solution {
  bool isPalindrome(ListNode? head) {
    final buffer = <Object?>[];
    for (var cursor = head; cursor != null; cursor = cursor.next) buffer.add(cursor.val.toString());
    for (var i = 0; i < buffer.length ~/ 2; i++) if (buffer[i] != buffer[buffer.length - i - 1]) return false;
    return true;
  }
}
