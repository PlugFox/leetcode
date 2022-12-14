/*
 * 707. Design Linked List
 * 
 * Design your implementation of the linked list.
 * You can choose to use a singly or doubly linked list.
 * A node in a singly linked list should have two attributes:
 * val and next. val is the value of the current node,
 * and next is a pointer/reference to the next node.
 * If you want to use the doubly linked list,
 * you will need one more attribute prev to indicate the previous node in the linked list.
 * Assume all nodes in the linked list are 0-indexed.
 * 
 * Implement the MyLinkedList class:
 * 
 * MyLinkedList() Initializes the MyLinkedList object.
 * int get(int index) Get the value of the indexth node in the linked list.
 * If the index is invalid, return -1.
 * void addAtHead(int val) Add a node of value val before the first element of the linked list.
 * After the insertion, the new node will be the first node of the linked list.
 * void addAtTail(int val) Append a node of value val as the last element of the linked list.
 * void addAtIndex(int index, int val) Add a node of value val before the indexth node in the linked list.
 * If index equals the length of the linked list, the node will be appended to the end of the linked list.
 * If index is greater than the length, the node will not be inserted.
 * void deleteAtIndex(int index) Delete the indexth node in the linked list, if the index is valid.
 *  
 * 
 * Example 1:
 * 
 * Input
 * ["MyLinkedList", "addAtHead", "addAtTail", "addAtIndex", "get", "deleteAtIndex", "get"]
 * [[], [1], [3], [1, 2], [1], [1], [1]]
 * Output
 * [null, null, null, null, 2, null, 3]
 * 
 * Explanation
 * MyLinkedList myLinkedList = new MyLinkedList();
 * myLinkedList.addAtHead(1);
 * myLinkedList.addAtTail(3);
 * myLinkedList.addAtIndex(1, 2);    // linked list becomes 1->2->3
 * myLinkedList.get(1);              // return 2
 * myLinkedList.deleteAtIndex(1);    // now the linked list is 1->3
 * myLinkedList.get(1);              // return 3
 *  
 * 
 * Constraints:
 * 
 * 0 <= index, val <= 1000
 * Please do not use the built-in LinkedList library.
 * At most 2000 calls will be made to get, addAtHead, addAtTail, addAtIndex and deleteAtIndex.
 */

class MyLinkedList {
  _Node? _head;

  _Node? _nodeAt(int index) {
    if (index < 0) return null;
    var node = _head;
    for (var i = 0; i < index && node != null; i++) node = node.next;
    return node;
  }

  int get(int index) => _nodeAt(index)?.val ?? -1;

  void addAtHead(int val) {
    _head = _Node()
      ..val = val
      ..prev = null
      ..next = _head;
    _head?.next?.prev = _head;
  }

  void addAtTail(int val) {
    var node = _head;
    if (node == null) return addAtHead(val);
    while (node!.next != null) node = node.next;
    node.next = _Node()
      ..val = val
      ..prev = node
      ..next = null;
  }

  void addAtIndex(int index, int val) {
    if (index < 1) return addAtHead(val);
    final node = _nodeAt(index - 1);
    if (node == null) return;
    final newNode = _Node()
      ..val = val
      ..prev = node
      ..next = node.next;
    node.next?.prev = newNode;
    node.next = newNode;
  }

  void deleteAtIndex(int index) {
    if (index == 0) {
      _head = _head?.next;
      return;
    }
    final node = _nodeAt(index - 1);
    if (node == null) return;
    node.next = node.next?.next;
    node.next?.prev = node;
  }
}

class _Node {
  int val = 0;
  _Node? prev, next;
}
