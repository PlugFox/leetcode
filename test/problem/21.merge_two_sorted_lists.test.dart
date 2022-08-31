import 'package:leetcode/src/problem/21.merge_two_sorted_lists.dart';
import 'package:leetcode/src/structure/list_node.dart';
import 'package:test/test.dart';

void main() => group('merge_two_sorted_lists', () {
      final f1 = SolutionV1().mergeTwoLists;
      final f2 = SolutionV2().mergeTwoLists;

      test('f([1,2,4], [1,3,4])', () {
        expect(
          f1(ListNode.of(<int>[1, 2, 4]), ListNode.of(<int>[1, 3, 4]))?.toList(),
          equals([1, 1, 2, 3, 4, 4]),
        );
        expect(
          f2(ListNode.of(<int>[1, 2, 4]), ListNode.of(<int>[1, 3, 4]))?.toList(),
          equals([1, 1, 2, 3, 4, 4]),
        );
      });

      test('f([1,2,4], [3,4])', () {
        expect(
          f1(ListNode.of(<int>[1, 2, 4]), ListNode.of(<int>[3, 4]))?.toList(),
          equals([1, 2, 3, 4, 4]),
        );
        expect(
          f2(ListNode.of(<int>[1, 2, 4]), ListNode.of(<int>[3, 4]))?.toList(),
          equals([1, 2, 3, 4, 4]),
        );
      });

      test('f([2,4], [1,3,4])', () {
        expect(
          f1(ListNode.of(<int>[2, 4]), ListNode.of(<int>[1, 3, 4]))?.toList(),
          equals([1, 2, 3, 4, 4]),
        );
        expect(
          f2(ListNode.of(<int>[2, 4]), ListNode.of(<int>[1, 3, 4]))?.toList(),
          equals([1, 2, 3, 4, 4]),
        );
      });

      test('f([-2,1,4], [-4,-1,3])', () {
        expect(
          f1(ListNode.of(<int>[-2, 1, 4]), ListNode.of(<int>[-4, -1, 3]))?.toList(),
          equals([-4, -2, -1, 1, 3, 4]),
        );
        expect(
          f2(ListNode.of(<int>[-2, 1, 4]), ListNode.of(<int>[-4, -1, 3]))?.toList(),
          equals([-4, -2, -1, 1, 3, 4]),
        );
      });

      test('f([], [])', () {
        expect(f1(null, null)?.toList(), isNull);
        expect(f2(null, null)?.toList(), isNull);
      });

      test('f([], [0])', () {
        expect(f1(null, ListNode.of(<int>[0]))?.toList(), equals([0]));
        expect(f2(null, ListNode.of(<int>[0]))?.toList(), equals([0]));
      });

      test('f([0], [])', () {
        expect(f1(ListNode.of(<int>[0]), null)?.toList(), equals([0]));
        expect(f2(ListNode.of(<int>[0]), null)?.toList(), equals([0]));
      });

      test('f([-10,-10,-9,-4,1,6,6], [-7])', () {
        expect(
          f1(ListNode.of(<int>[-10, -10, -9, -4, 1, 6, 6]), ListNode.of(<int>[-7]))?.toList(),
          equals([-10, -10, -9, -7, -4, 1, 6, 6]),
        );
        expect(
          f2(ListNode.of(<int>[-10, -10, -9, -4, 1, 6, 6]), ListNode.of(<int>[-7]))?.toList(),
          equals([-10, -10, -9, -7, -4, 1, 6, 6]),
        );
      });
    });
