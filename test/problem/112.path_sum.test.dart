import 'package:leetcode/src/problem/112.path_sum.dart';
import 'package:leetcode/src/structure/tree_node.dart';
import 'package:test/test.dart';

void main() => group('path_sum', () {
      final f = Solution().hasPathSum;

      test('f([5,4,8,11,null,13,4,7,2,null,null,null,1], 22)', () {
        expect(f(TreeNode.of([5, 4, 8, 11, null, 13, 4, 7, 2, null, null, null, 1]), 22), isTrue);
      });

      test('f([1,2,3], 5)', () {
        expect(f(TreeNode.of([1, 2, 3]), 5), isFalse);
      });

      test('f([1], 1)', () {
        expect(f(TreeNode.of([1]), 1), isTrue);
      });

      test('f([], 0)', () {
        expect(f(TreeNode.of([]), 0), isFalse);
      });

      test('f([1,2], 1)', () {
        expect(f(TreeNode.of([1, 2]), 1), isFalse);
      });
    });
