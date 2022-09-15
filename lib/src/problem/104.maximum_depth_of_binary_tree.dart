/*
 * 104. Maximum Depth of Binary Tree
 * 
 * Given the root of a binary tree, return its maximum depth.
 * 
 * A binary tree's maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.
 * 
 * 
 * Example 1:
 * 
 * Input: root = [3,9,20,null,null,15,7]
 * Output: 3
 * 
 * 
 * Example 2:
 * 
 * Input: root = [1,null,2]
 * Output: 2
 *  
 * 
 * Constraints:
 * 
 * The number of nodes in the tree is in the range [0, 104].
 * -100 <= Node.val <= 100
 */

import 'dart:math' as math;

import '../structure/tree_node.dart';

class Solution {
  int maxDepth(TreeNode? root) => root == null ? 0 : math.max<int>(maxDepth(root.left), maxDepth(root.right)) + 1;
}
