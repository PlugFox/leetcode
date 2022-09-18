/*
 * 250. Count Univalue Subtrees
 * 
 * Given the root of a binary tree, return the number of uni-value subtrees.
 * 
 * A uni-value subtree means all nodes of the subtree have the same value.
 * 
 *  
 * Example 1:
 * 
 * Input: root = [5,1,5,5,5,null,5]
 * Output: 4
 * 
 * 
 * Example 2:
 * 
 * Input: root = []
 * Output: 0
 * 
 * 
 * Example 3:
 * 
 * Input: root = [5,5,5,5,5,null,5]
 * Output: 6
 *  
 * 
 * Constraints:
 * 
 * The number of the node in the tree will be in the range [0, 1000].
 * -1000 <= Node.val <= 1000
 */

import '../structure/tree_node.dart';

class Solution {
  int countUnivalSubtrees(TreeNode? root) {
    if (root == null) return 0;
    var count = 0;
    int? visit(TreeNode node) {
      final left = node.left != null ? visit(node.left!) : node.val;
      final right = node.right != null ? visit(node.right!) : node.val;
      if (left != node.val || right != node.val) return null;
      count++;
      return node.val;
    }

    visit(root);
    return count;
  }
}
