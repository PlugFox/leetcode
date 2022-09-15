import 'package:leetcode/src/problem/104.maximum_depth_of_binary_tree.dart';
import 'package:leetcode/src/structure/tree_node.dart';
import 'package:test/test.dart';

void main() => group('maximum_depth_of_binary_tree', () {
      final f = Solution().maxDepth;

      test('f([3,9,20,null,null,15,7])', () {
        expect(f(TreeNode.of([3, 9, 20, null, null, 15, 7])), equals(3));
      });

      test('f([])', () {
        expect(f(TreeNode.of([])), equals(0));
      });

      test('f([1])', () {
        expect(f(TreeNode.of([1])), equals(1));
      });

      test('f([1,null,2])', () {
        expect(f(TreeNode.of([1, null, 2])), equals(2));
      });
    });
