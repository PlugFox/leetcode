import 'package:leetcode/src/problem/144.binary_tree_preorder_traversal.dart';
import 'package:leetcode/src/structure/tree_node.dart';
import 'package:test/test.dart';

void main() => group('binary_tree_preorder_traversal', () {
      final f1 = SolutionV1().preorderTraversal;
      final f2 = SolutionV2().preorderTraversal;

      test('f([1,null,2,3])', () {
        expect(f1(TreeNode.of([1, null, 2, 3])), equals([1, 2, 3]));
        expect(f2(TreeNode.of([1, null, 2, 3])), equals([1, 2, 3]));
      });

      test('f([])', () {
        expect(f1(TreeNode.of([])), isEmpty);
        expect(f2(TreeNode.of([])), isEmpty);
      });

      test('f([1])', () {
        expect(f1(TreeNode.of([1])), equals([1]));
        expect(f2(TreeNode.of([1])), equals([1]));
      });
    });
