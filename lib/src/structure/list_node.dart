class ListNode extends Iterable<int> {
  ListNode(this.val, [this.next]);

  factory ListNode.of(Iterable<int> collection) {
    final iterator = collection.iterator;
    if (!iterator.moveNext()) throw Exception('Empty collection');
    final head = ListNode(iterator.current);
    var node = head;
    while (iterator.moveNext()) {
      node = node.next = ListNode(iterator.current);
    }
    return head;
  }

  final int val;

  ListNode? next;

  @override
  Iterator<int> get iterator => _ListNodeIterator(this);

  Iterable toIterable() sync* {
    ListNode? node = this;
    yield val;
    while (true) {
      node = node?.next;
      if (node == null) break;
      yield node.val;
    }
  }

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
