/*
 * 21. Merge Two Sorted Lists
 * 
 * You are given the heads of two sorted linked lists list1 and list2.
 * 
 * Merge the two lists in a one sorted list.
 * The list should be made by splicing together the nodes of the first two lists.
 * 
 * Return the head of the merged linked list.
 * 
 * 
 * Example 1:
 * 
 * Input: list1 = [1,2,4], list2 = [1,3,4]
 * Output: [1,1,2,3,4,4]
 * 
 * 
 * Example 2:
 * 
 * Input: list1 = [], list2 = []
 * Output: []
 * 
 * 
 * Example 3:
 * 
 * Input: list1 = [], list2 = [0]
 * Output: [0]
 *  
 * 
 * Constraints:
 * 
 * The number of nodes in both lists is in the range [0, 50].
 * -100 <= Node.val <= 100
 * Both list1 and list2 are sorted in non-decreasing order.
 */

import '../structure/list_node.dart';

class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    final newHead = ListNode(0);
    var ptr1 = list1, ptr2 = list2;
    ListNode getNext() {
      ListNode next;
      if (ptr1 == null && ptr2 == null) {
        throw Exception();
      } else if (ptr1 == null) {
        next = ptr2!;
        ptr2 = ptr2!.next;
      } else if (ptr2 == null) {
        next = ptr1!;
        ptr1 = ptr1!.next;
      } else if (ptr1!.val > ptr2!.val) {
        next = ptr2!;
        ptr2 = ptr2!.next;
      } else {
        next = ptr1!;
        ptr1 = ptr1!.next;
      }
      return next;
    }

    for (var ptr = newHead; ptr1 != null || ptr2 != null;) {
      ptr = ptr.next = getNext();
    }
    return newHead.next;
  }
}
