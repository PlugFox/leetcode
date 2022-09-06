import 'package:leetcode/src/problem/144.binary_tree_preorder_traversal.dart';
import 'package:leetcode/src/structure/tree_node.dart';
import 'package:test/test.dart';

void main() => group('binary_tree_preorder_traversal', () {
      // ignore: unused_local_variable
      final f = Solution().preorderTraversal;

      test('treeNode', () {
        // ignore: avoid_print
        print(TreeNode.fromList([1, null, 2, 3]).toString());
        expect(() => TreeNode.fromList([1, null, 2, 3]), returnsNormally);
      });

      /* test('f([1,null,2,3])', () {
        print(TreeNode.fromList([1, null, 2, 3]).toString());
        expect(f(TreeNode.fromList([1, null, 2, 3])), equals([1, 2, 3]));
      });

      test('f([])', () {
        expect(f(TreeNode.fromList([])), isEmpty);
      });

      test('f([1])', () {
        expect(f(TreeNode.fromList([1])), equals([1]));
      }); */
    });
