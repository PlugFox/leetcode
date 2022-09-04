import 'package:leetcode/src/problem/61.rotate_list.dart';
import 'package:leetcode/src/structure/list_node.dart';
import 'package:test/test.dart';

void main() => group('rotate_list', () {
      final f = Solution().rotateRight;

      test('returnsNormally', () {
        expect(() => f(ListNode.of([1, 2, 3, 4, 5]), 2), returnsNormally);
      });

      test('f(null, 2)', () {
        expect(
          f(null, 2)?.toList(),
          isNull,
        );
      });

      test('f([1,2,3], 0)', () {
        expect(
          f(ListNode.of([1, 2, 3]), 0)?.toList(),
          equals([1, 2, 3]),
        );
      });

      test('f([1,2,3,4,5], 2)', () {
        expect(
          f(ListNode.of([1, 2, 3, 4, 5]), 2)?.toList(),
          equals([4, 5, 1, 2, 3]),
        );
      });

      test('f([0,1,2], 4)', () {
        expect(
          f(ListNode.of([0, 1, 2]), 4)?.toList(),
          equals([2, 0, 1]),
        );
      });
    });
