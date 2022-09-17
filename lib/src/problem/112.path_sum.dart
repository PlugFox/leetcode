/*
 * 112. Path Sum
 * 
 * Given the root of a binary tree and an integer targetSum,
 * return true if the tree has a root-to-leaf path such
 * that adding up all the values along the path equals targetSum.
 * 
 * A leaf is a node with no children.
 *  
 * 
 * Example 1:
 * 
 * Input: root = [5,4,8,11,null,13,4,7,2,null,null,null,1], targetSum = 22
 * Output: true
 * 
 * 
 * Example 2:
 * 
 * Input: root = [1,2,3], targetSum = 5
 * Output: false
 * 
 * 
 * Example 3:
 * 
 * Input: root = [], targetSum = 0
 * Output: false
 *  
 * 
 * Constraints:
 * 
 * The number of nodes in the tree is in the range [0, 5000].
 * -1000 <= Node.val <= 1000
 * -1000 <= targetSum <= 1000
 */

import '../structure/tree_node.dart';

class Solution {
  bool hasPathSum(TreeNode? root, int targetSum) {
    if (root == null) return false;
    targetSum -= root.val;
    final nodes = <TreeNode?>[root.left, root.right].whereType<TreeNode>().toList();
    if (nodes.isEmpty) return targetSum == 0;
    return nodes.any((node) => hasPathSum(node, targetSum));
  }
}
