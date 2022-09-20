/*
 * 106. Construct Binary Tree from Inorder and Postorder Traversal
 * 
 * Given two integer arrays inorder and postorder where inorder
 * is the inorder traversal of a binary tree and postorder
 * is the postorder traversal of the same tree,
 * construct and return the binary tree.
 * 
 *  
 * Example 1:
 * 
 * 
 * Input: inorder = [9,3,15,20,7], postorder = [9,15,7,20,3]
 * Output: [3,9,20,null,null,15,7]
 * 
 * 
 * Example 2:
 * 
 * Input: inorder = [-1], postorder = [-1]
 * Output: [-1]
 *  
 * 
 * Constraints:
 * 
 * 1 <= inorder.length <= 3000
 * postorder.length == inorder.length
 * -3000 <= inorder[i], postorder[i] <= 3000
 * inorder and postorder consist of unique values.
 * Each value of postorder also appears in inorder.
 * inorder is guaranteed to be the inorder traversal of the tree.
 * postorder is guaranteed to be the postorder traversal of the tree.
 */

import '../structure/tree_node.dart';

class Solution {
  TreeNode? buildTree(List<int> inorder, List<int> postorder) {
    assert(inorder.length == postorder.length);
    assert(inorder.toSet().length == inorder.length);
    assert(postorder.toSet().length == postorder.length);
    if (inorder.isEmpty) return null;
    final idx = inorder.indexOf(postorder.last);
    return TreeNode(
      postorder.last,
      buildTree(inorder.sublist(0, idx), postorder.sublist(0, idx)),
      buildTree(inorder.sublist(idx + 1), postorder.sublist(idx, postorder.length - 1)),
    );
  }
}
