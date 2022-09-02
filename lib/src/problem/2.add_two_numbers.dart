/*
 * 2. Add Two Numbers
 * 
 * You are given two non-empty linked lists representing two non-negative integers.
 * The digits are stored in reverse order,
 * and each of their nodes contains a single digit.
 * Add the two numbers and return the sum as a linked list.
 * 
 * You may assume the two numbers do not contain any leading zero,
 * except the number 0 itself.
 * 
 * 
 * Example 1:
 * 
 * Input: l1 = [2,4,3], l2 = [5,6,4]
 * Output: [7,0,8]
 * Explanation: 342 + 465 = 807.
 * 
 * 
 * Example 2:
 * 
 * Input: l1 = [0], l2 = [0]
 * Output: [0]
 * 
 * 
 * Example 3:
 * 
 * Input: l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
 * Output: [8,9,9,9,0,0,0,1]
 *  
 * 
 * Constraints:
 * 
 * The number of nodes in each linked list is in the range [1, 100].
 * 0 <= Node.val <= 9
 * It is guaranteed that the list represents a number that does not have leading zeros.
 */

import 'dart:math' as math;

import '../structure/list_node.dart';

class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    if (l1 == null) return l2;
    if (l2 == null) return l1;
    var n = _getNumber(l1) + _getNumber(l2);
    final result = ListNode(n - (n ~/ 10) * 10);
    var ptr = result;
    n ~/= 10;
    while (n > 0) {
      ptr = ptr.next = ListNode(n - (n ~/ 10) * 10);
      n ~/= 10;
    }
    return result;
  }

  static int _getNumber(ListNode? l) {
    var n = 0;
    for (var i = 0; l != null; i++) {
      n += l.val * math.pow(10, i).truncate();
      l = l.next;
    }
    return n;
  }
}
