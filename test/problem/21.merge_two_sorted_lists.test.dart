import 'package:leetcode/src/problem/21.merge_two_sorted_lists.dart';
import 'package:leetcode/src/structure/list_node.dart';
import 'package:test/test.dart';

void main() => group('merge_two_sorted_lists', () {
      final f = Solution().mergeTwoLists;

      test('f([1,2,4], [1,3,4])', () {
        expect(
          f(ListNode.of(<int>[1, 2, 4]), ListNode.of(<int>[1, 3, 4]))?.toList(),
          equals([1, 1, 2, 3, 4, 4]),
        );
      });

      test('f([1,2,4], [3,4])', () {
        expect(
          f(ListNode.of(<int>[1, 2, 4]), ListNode.of(<int>[3, 4]))?.toList(),
          equals([1, 2, 3, 4, 4]),
        );
      });

      test('f([2,4], [1,3,4])', () {
        expect(
          f(ListNode.of(<int>[2, 4]), ListNode.of(<int>[1, 3, 4]))?.toList(),
          equals([1, 2, 3, 4, 4]),
        );
      });

      test('f([-2,1,4], [-4,-1,3])', () {
        expect(
          f(ListNode.of(<int>[-2, 1, 4]), ListNode.of(<int>[-4, -1, 3]))?.toList(),
          equals([-4, -2, -1, 1, 3, 4]),
        );
      });

      test('f([], [])', () {
        expect(f(null, null)?.toList(), isNull);
      });

      test('f([], [0])', () {
        expect(f(null, ListNode.of(<int>[0]))?.toList(), equals([0]));
      });
    });
