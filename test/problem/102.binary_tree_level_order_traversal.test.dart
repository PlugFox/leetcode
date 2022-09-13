import 'package:leetcode/src/problem/102.binary_tree_level_order_traversal.dart';
import 'package:leetcode/src/structure/tree_node.dart';
import 'package:test/test.dart';

void main() => group('binary_tree_level_order_traversal', () {
      final f = Solution().levelOrder;

      test('f([3,9,20,null,null,15,7])', () {
        expect(
          f(TreeNode.of([3, 9, 20, null, null, 15, 7])),
          equals([
            [3],
            [9, 20],
            [15, 7]
          ]),
        );
      });

      test('f([1])', () {
        expect(
          f(TreeNode.of([1])),
          equals([
            [1]
          ]),
        );
      });

      test('f([])', () {
        expect(f(TreeNode.of([])), isEmpty);
      });
    });
