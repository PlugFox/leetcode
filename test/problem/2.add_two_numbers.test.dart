import 'package:leetcode/src/problem/2.add_two_numbers.dart';
import 'package:leetcode/src/structure/list_node.dart';
import 'package:test/test.dart';

void main() => group('palindrome_number', () {
      final f = Solution().addTwoNumbers;

      test('f(null,null)', () {
        expect(
          f(null, null)?.toList(),
          isNull,
        );
      });

      test('f([0],null)', () {
        expect(
          f(ListNode.of([0]), null)?.toList(),
          equals([0]),
        );
      });

      test('f(null,[0])', () {
        expect(
          f(null, ListNode.of([0]))?.toList(),
          equals([0]),
        );
      });

      test('f([2,4,3],[5,6,4])', () {
        expect(
          f(ListNode.of([2, 4, 3]), ListNode.of([5, 6, 4]))?.toList(),
          equals([7, 0, 8]),
        );
      });

      test('f([0],[0])', () {
        expect(
          f(ListNode.of([0]), ListNode.of([0]))?.toList(),
          equals([0]),
        );
      });

      test('f([9,9,9,9,9,9,9],[9,9,9,9])', () {
        expect(
          f(ListNode.of([9, 9, 9, 9, 9, 9, 9]), ListNode.of([9, 9, 9, 9]))?.toList(),
          equals([8, 9, 9, 9, 0, 0, 0, 1]),
        );
      });

      test('f([2,4,9],[5,6,4,9])', () {
        expect(
          f(ListNode.of([2, 4, 9]), ListNode.of([5, 6, 4, 9]))?.toList(),
          equals([7, 0, 4, 0, 1]),
        );
      });
    });
