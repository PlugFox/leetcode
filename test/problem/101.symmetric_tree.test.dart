import 'package:leetcode/src/problem/101.symmetric_tree.dart';
import 'package:leetcode/src/structure/tree_node.dart';
import 'package:test/test.dart';

void main() => group('binary_tree_level_order_traversal', () {
      final f1 = SolutionV1().isSymmetric;
      final f2 = SolutionV2().isSymmetric;

      test('f([])', () {
        expect(f1(TreeNode.of([])), isTrue);
        expect(f2(TreeNode.of([])), isTrue);
      });

      test('f([1])', () {
        expect(f1(TreeNode.of([1])), isTrue);
        expect(f2(TreeNode.of([1])), isTrue);
      });

      test('f([1, 2])', () {
        expect(f1(TreeNode.of([1, 2])), isFalse);
        expect(f2(TreeNode.of([1, 2])), isFalse);
      });

      test('f([1,2,2,3,4,4,3])', () {
        expect(f1(TreeNode.of([1, 2, 2, 3, 4, 4, 3])), isTrue);
        expect(f2(TreeNode.of([1, 2, 2, 3, 4, 4, 3])), isTrue);
      });

      test('f([1,2,2,null,3,null,3])', () {
        expect(f1(TreeNode.of([1, 2, 2, null, 3, null, 3])), isFalse);
        expect(f2(TreeNode.of([1, 2, 2, null, 3, null, 3])), isFalse);
      });
    });
