import 'dart:convert';

class TreeNode {
  TreeNode([this.val = 0, this.left, this.right]);

  static TreeNode? of(Iterable<int?> collection) {
    final iterator = collection.iterator;
    if (!iterator.moveNext() || iterator.current == null) return null;
    final head = TreeNode(iterator.current!);
    var queue = <TreeNode>[head];
    while (queue.isNotEmpty) {
      final newQueue = <TreeNode>[];
      for (final node in queue) {
        if (!iterator.moveNext()) return head;
        if (iterator.current != null) newQueue.add(node.left = TreeNode(iterator.current!));
        if (!iterator.moveNext()) return head;
        if (iterator.current != null) newQueue.add(node.right = TreeNode(iterator.current!));
      }
      queue = newQueue;
    }
    return head;
  }

  int val;
  TreeNode? left;
  TreeNode? right;

  List<int?> toList() {
    final list = <int?>[val];
    var queue = <TreeNode>[this];
    while (queue.isNotEmpty) {
      final newQueue = <TreeNode>[];
      for (final node in queue) {
        list.addAll([node.left?.val, node.right?.val]);
        if (node.left != null) newQueue.add(node.left!);
        if (node.right != null) newQueue.add(node.right!);
      }
      queue = newQueue;
    }
    var last = list.length - 1;
    for (; last >= 0; last--) if (list[last] != null) break;
    return list.sublist(0, last + 1);
  }

  Map<String, Object?> toJson() => <String, Object?>{
        'val': val,
        'left': left?.toJson(),
        'right': right?.toJson(),
      };

  @override
  String toString() => const JsonEncoder.withIndent(' ').convert(this);
}
