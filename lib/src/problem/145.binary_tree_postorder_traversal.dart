/*
 * 145. Binary Tree Postorder Traversal
 * 
 * Given the root of a binary tree,
 * return the postorder traversal of its nodes' values.
 *  
 * 
 * Example 1:
 * 
 * Input: root = [1,null,2,3]
 * Output: [3,2,1]
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
 * The number of the nodes in the tree is in the range [0, 100].
 * -100 <= Node.val <= 100
 *  
 * 
 * Follow up: Recursive solution is trivial, could you do it iteratively?
 */

import '../structure/tree_node.dart';

class SolutionV1 {
  List<int> postorderTraversal(TreeNode? root) {
    final list = <int>[];
    void visit(TreeNode? node) {
      if (node == null) return;
      visit(node.left);
      visit(node.right);
      list.add(node.val);
    }

    visit(root);
    return list;
  }
}

class SolutionV2 {
  List<int> postorderTraversal(TreeNode? root) {
    Iterable<int> traversal() sync* {
      final stack = <TreeNode>[];
      for (var node = root; node != null;) {
        final left = node.left;
        if (left != null) {
          stack.add(node..left = null);
          node = left;
          continue;
        }
        final right = node.right;
        if (right != null) {
          stack.add(node..right = null);
          node = right;
          continue;
        }
        yield node.val;
        node = stack.isEmpty ? null : stack.removeLast();
      }
    }

    return traversal().toList();
  }
}
