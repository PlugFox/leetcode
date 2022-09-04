/*
 * 61. Rotate List
 * 
 * Given the head of a linked list, rotate the list to the right by k places.
 * 
 * 
 * Example 1:
 * 
 * Input: head = [1,2,3,4,5], k = 2
 * Output: [4,5,1,2,3]
 * 
 * 
 * Example 2:
 * 
 * Input: head = [0,1,2], k = 4
 * Output: [2,0,1]
 * 
 * Constraints:
 * 
 * The number of nodes in the list is in the range [0, 500].
 * -100 <= Node.val <= 100
 * 0 <= k <= 2 * 10^9
 */

import '../structure/list_node.dart';

class Solution {
  ListNode? rotateRight(ListNode? head, int k) {
    if (head == null || k < 1) return head;

    var length = 0;
    void rotate(ListNode node) {
      length++;
      node.next != null ? rotate(node.next!) : k %= length;
      if (k > 0) head = node..next = head;
      if (k == 0) node.next = null;
      k--;
    }

    rotate(head!);
    return head;
  }
}
