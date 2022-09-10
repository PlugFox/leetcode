/*
 * 94. Binary Tree Inorder Traversal
 * 
 * Given the root of a binary tree,
 * return the inorder traversal of its nodes' values.
 * 
 * 
 * Example 1:
 * 
 * Input: root = [1,null,2,3]
 * Output: [1,3,2]
 * 
 * 
 * Example 2:
 * 
 * Input: root = []
 * Output: []
 * 
 * 
 * Example 3:
 * 
 * Input: root = [1]
 * Output: [1]
 *  
 * 
 * Constraints:
 * 
 * The number of nodes in the tree is in the range [0, 100].
 * -100 <= Node.val <= 100
 *  
 * 
 * Follow up: Recursive solution is trivial, could you do it iteratively?
 */

import '../structure/tree_node.dart';

class SolutionV1 {
  List<int> inorderTraversal(TreeNode? root) {
    if (root == null) return <int>[];
    final list = <int>[];
    void visit(TreeNode node) {
      if (node.left != null) visit(node.left!);
      list.add(node.val);
      if (node.right != null) visit(node.right!);
    }

    visit(root);
    return list;
  }
}

class SolutionV2 {
  List<int> inorderTraversal(TreeNode? root) {
    Iterable<int> traversal() sync* {
      final stack = <TreeNode>[];
      for (var node = root; node != null;) {
        final left = node.left;
        if (left != null) {
          stack.add(node..left = null);
          node = left;
          continue;
        }
        yield node.val;
        node = node.right ?? (stack.isEmpty ? null : stack.removeLast());
      }
    }

    return traversal().toList();
  }
}

class SolutionV3 {
  List<int> inorderTraversal(TreeNode? root) {
    Iterable<int> traversal() sync* {
      final stack = <TreeNode>[];
      for (var node = root; node != null || stack.isNotEmpty;) {
        while (node != null) {
          stack.add(node);
          node = node.left;
        }
        node = stack.removeLast();
        yield node.val;
        node = node.right;
      }
    }

    return traversal().toList();
  }
}
