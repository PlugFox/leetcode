import 'package:leetcode/src/problem/94.binary_tree_inorder_traversal.dart';
import 'package:leetcode/src/structure/tree_node.dart';
import 'package:test/test.dart';

void main() => group('binary_tree_inorder_traversal', () {
      final f1 = SolutionV1().inorderTraversal;
      final f2 = SolutionV2().inorderTraversal;
      final f3 = SolutionV3().inorderTraversal;

      test('f([1,null,2,3])', () {
        expect(f1(TreeNode.of([1, null, 2, 3])), equals([1, 3, 2]));
        expect(f2(TreeNode.of([1, null, 2, 3])), equals([1, 3, 2]));
        expect(f3(TreeNode.of([1, null, 2, 3])), equals([1, 3, 2]));
      });

      test('f([])', () {
        expect(f1(TreeNode.of([])), isEmpty);
        expect(f2(TreeNode.of([])), isEmpty);
        expect(f3(TreeNode.of([])), isEmpty);
      });

      test('f([1])', () {
        expect(f1(TreeNode.of([1])), equals([1]));
        expect(f2(TreeNode.of([1])), equals([1]));
        expect(f3(TreeNode.of([1])), equals([1]));
      });
    });
