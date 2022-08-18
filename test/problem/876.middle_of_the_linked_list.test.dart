import 'package:leetcode/src/problem/876.middle_of_the_linked_list.dart';
import 'package:leetcode/src/structure/list_node.dart';
import 'package:test/test.dart';

void main() => group('middle_of_the_linked_list', () {
      final f = Solution().middleNode;

      test('f(null)', () {
        expect(f(null), isNull);
      });

      test('f([1, 2, 3, 4, 5])', () {
        expect(f(ListNode<int>.of([1, 2, 3, 4, 5])), orderedEquals(<int>[3, 4, 5]));
      });

      test('f([1, 2, 3, 4, 5, 6])', () {
        expect(f(ListNode<int>.of([1, 2, 3, 4, 5, 6])), orderedEquals(<int>[4, 5, 6]));
      });
    });
