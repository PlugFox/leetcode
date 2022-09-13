/*
 * 102. Binary Tree Level Order Traversal
 * 
 * Given the root of a binary tree,
 * return the level order traversal of its nodes' values.
 * (i.e., from left to right, level by level).
 * 
 * 
 * Example 1:
 * 
 * Input: root = [3,9,20,null,null,15,7]
 * Output: [[3],[9,20],[15,7]]
 * 
 * 
 * Example 2:
 * 
 * Input: root = [1]
 * Output: [[1]]
 * 
 * 
 * Example 3:
 * 
 * Input: root = []
 * Output: []
 *  
 * 
 * Constraints:
 * 
 * The number of nodes in the tree is in the range [0, 2000].
 * -1000 <= Node.val <= 1000
 */

import '../structure/tree_node.dart';

class Solution {
  List<List<int>> levelOrder(TreeNode? root) {
    if (root == null) return [];
    final result = <List<int>>[];
    final queue = <TreeNode>[root];
    for (; queue.isNotEmpty;) {
      result.add(<int>[]);
      final nodes = queue.toList();
      queue.clear();
      for (final node in nodes) {
        result.last.add(node.val);
        queue.addAll(<TreeNode>[
          if (node.left != null) node.left!,
          if (node.right != null) node.right!,
        ]);
      }
    }
    return result;
  }
}
