/*
 * 101. Symmetric Tree
 * 
 * Given the root of a binary tree,
 * check whether it is a mirror of itself
 * (i.e., symmetric around its center).
 * 
 * 
 * Example 1:
 * 
 * 
 * Input: root = [1,2,2,3,4,4,3]
 * Output: true
 * 
 * 
 * Example 2:
 * 
 * 
 * Input: root = [1,2,2,null,3,null,3]
 * Output: false
 *  
 * 
 * Constraints:
 * 
 * The number of nodes in the tree is in the range [1, 1000].
 * -100 <= Node.val <= 100
 *  
 * 
 * Follow up: Could you solve it both recursively and iteratively?
 */

import '../structure/tree_node.dart';

class SolutionV1 {
  bool isSymmetric(TreeNode? root) {
    bool compare(TreeNode? left, TreeNode? right) {
      if (left == null && right == null) return true;
      if (left?.val != right?.val) return false;
      return compare(left?.left, right?.right) && compare(left?.right, right?.left);
    }

    return compare(root?.left, root?.right);
  }
}

class SolutionV2 {
  bool isSymmetric(TreeNode? root) => SolutionV1().isSymmetric(root);
}
