import 'package:leetcode/src/problem/250.count_univalue_subtrees.dart';
import 'package:leetcode/src/structure/tree_node.dart';
import 'package:test/test.dart';

void main() => group('count_univalue_subtrees', () {
      final countUnivalSubtrees = Solution().countUnivalSubtrees;
      int f(List<int?> list) => countUnivalSubtrees(TreeNode.of(list));

      test('f([5,1,5,5,5,null,5])', () {
        expect(f([5, 1, 5, 5, 5, null, 5]), equals(4));
      });

      test('f([])', () {
        expect(f([]), equals(0));
      });

      test('f([5,5,5,5,5,null,5])', () {
        expect(f([5, 5, 5, 5, 5, null, 5]), equals(6));
      });

      test('f([0])', () {
        expect(f([0]), equals(1));
      });

      test('f([1,2,2])', () {
        expect(f([1, 2, 2]), equals(2));
      });

      test('f([5,null,4,null,5,5,5,null,null,5])', () {
        expect(f([5, null, 4, null, 5, 5, 5, null, null, 5]), equals(4));
      });
    });
