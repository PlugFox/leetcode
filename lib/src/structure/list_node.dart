class ListNode<T> {
  ListNode(this.val, [this.next]);

  factory ListNode.of(Iterable<T> list) {
    final iterator = list.iterator;
    if (!iterator.moveNext()) throw Exception('Empty collection');
    final head = ListNode<T>(iterator.current);
    var node = head;
    while (iterator.moveNext()) {
      node = node.next = ListNode<T>(iterator.current);
    }
    return head;
  }

  final T val;

  ListNode<T>? next;

  Iterable<T> toIterable() sync* {
    ListNode<T>? node = this;
    yield val;
    while (true) {
      node = node?.next;
      if (node == null) break;
      yield node.val;
    }
  }

  List<T> toList() => toIterable().toList();

  @override
  String toString() {
    ListNode<T>? node = this;
    final buffer = StringBuffer('( ')..write(node.val);
    while (true) {
      node = node?.next;
      if (node == null) break;
      buffer
        ..write(', ')
        ..write(node.val);
    }
    return (buffer..write(' )')).toString();
  }
}
