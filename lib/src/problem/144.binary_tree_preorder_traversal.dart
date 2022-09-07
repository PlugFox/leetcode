/*
 * 144. Binary Tree Preorder Traversal
 *
 * Given the root of a binary tree, return the preorder traversal of its nodes' values.
 * 
 * 
 * Example 1:
 * 
 * Input: root = [1,null,2,3]
 * Output: [1,2,3]
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
  List<int> preorderTraversal(TreeNode? root) {
    final list = <int>[];
    void visit(TreeNode? node) {
      if (node == null) return;
      list.add(node.val);
      visit(node.left);
      visit(node.right);
    }

    visit(root);
    return list;
  }
}

class SolutionV2 {
  List<int> preorderTraversal(TreeNode? root) {
    final list = <int>[];
    void visit(TreeNode? node) {
      if (node == null) return;
      list.add(node.val);
      visit(node.left);
      visit(node.right);
    }

    visit(root);
    return list;
  }
}
