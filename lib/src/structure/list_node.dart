class ListNode extends Iterable<int> {
  ListNode(this.val, [this.next]);

  static ListNode? of(Iterable<int> collection) {
    final iterator = collection.iterator;
    if (!iterator.moveNext()) return null;
    final head = ListNode(iterator.current);
    var node = head;
    while (iterator.moveNext()) {
      node = node.next = ListNode(iterator.current);
    }
    return head;
  }

  int val;
  ListNode? next;

  @override
  Iterator<int> get iterator => _ListNodeIterator(this);

  List<Object?> toJson() => toList();

  @override
  String toString() {
    ListNode? node = this;
    final buffer = StringBuffer('(')..write(node.val);
    while (true) {
      node = node?.next;
      if (node == null) break;
      buffer
        ..write(', ')
        ..write(node.val);
    }
    return (buffer..write(')')).toString();
  }
}

class _ListNodeIterator implements Iterator<int> {
  _ListNodeIterator(ListNode node) : _node = node;

  bool _head = true;
  ListNode _node;

  @override
  int get current => _node.val;

  @override
  @pragma('vm:prefer-inline')
  bool moveNext() {
    final next = _head ? _node : _node.next;
    _head = false;
    if (next == null) {
      return false;
    }
    _node = next;
    return true;
  }
}
