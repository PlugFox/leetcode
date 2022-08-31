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

class SolutionV1 {
  ListNode? mergeTwoLists(ListNode? node1, ListNode? node2) {
    final newHead = ListNode(0);
    var prev = newHead;
    while (node1 != null && node2 != null) {
      if (node1.val > node2.val) {
        prev = prev.next = node2;
        node2 = node2.next;
      } else {
        prev = prev.next = node1;
        node1 = node1.next;
      }
    }
    prev.next = node1 ?? node2;
    return newHead.next;
  }
}

class SolutionV2 {
  ListNode? mergeTwoLists(ListNode? node1, ListNode? node2) {
    if (node1 == null) return node2;
    if (node2 == null) return node1;

    ListNode innerMerge(ListNode node1, ListNode node2) {
      final head = node1;
      var prev = head;
      ListNode? first = node1.next, second = node2;
      while (first != null && second != null) {
        if (first.val > second.val) {
          prev = prev.next = second;
          second = second.next;
        } else {
          prev = prev.next = first;
          first = first.next;
        }
      }
      prev.next = first ?? second;
      return head;
    }

    return node1.val > node2.val ? innerMerge(node2, node1) : innerMerge(node1, node2);
  }
}
