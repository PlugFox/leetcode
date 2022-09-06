import 'dart:convert';

class TreeNode {
  TreeNode([this.val = 0, this.left, this.right]);

  static TreeNode? fromList(List<int?> list) {
    if (list.isEmpty || list.first == null) return null;
    final middle = 1 + ((list.length - 1) / 2).ceil();
    return TreeNode(list.first!)
      ..left = fromList(list.sublist(1, middle))
      ..right = fromList(list.sublist(middle));
  }

  int val;
  TreeNode? left;
  TreeNode? right;

  Map<String, Object?> toJson() => <String, Object?>{
        'val': val,
        'left': left?.toJson(),
        'right': right?.toJson(),
      };

  @override
  String toString() => const JsonEncoder.withIndent(' ').convert(this);
}
