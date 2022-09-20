import 'package:leetcode/src/problem/106.construct_binary_tree_from_inorder_and_postorder_traversal.dart';
import 'package:test/test.dart';

void main() => group('construct_binary_tree_from_inorder_and_postorder_traversal', () {
      final f = Solution().buildTree;

      test('f([9,3,15,20,7],[9,15,7,20,3])', () {
        expect(f([9, 3, 15, 20, 7], [9, 15, 7, 20, 3])?.toList(), equals([3, 9, 20, null, null, 15, 7]));
      });

      test('f([-1],[-1])', () {
        expect(f([-1], [-1])?.toList(), equals([-1]));
      });

      test('f([],[])', () {
        expect(f([], []), equals(null));
      });
    });
