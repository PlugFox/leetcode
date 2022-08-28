import 'package:leetcode/src/problem/328.odd_even_linked_list.dart';
import 'package:leetcode/src/structure/list_node.dart';
import 'package:test/test.dart';

void main() => group('odd_even_linked_list', () {
      final f = Solution().oddEvenList;

      test('f([])', () {
        expect(f(null)?.toList(), isNull);
      });

      test('f([1,2,3,4,5,6,7,8])', () {
        expect(f(ListNode<int>.of([1, 2, 3, 4, 5, 6, 7, 8]))?.toList(), equals(<int>[1, 3, 5, 7, 2, 4, 6, 8]));
      });

      test('f([1,2,3,4,5])', () {
        expect(f(ListNode<int>.of([1, 2, 3, 4, 5]))?.toList(), equals(<int>[1, 3, 5, 2, 4]));
      });

      test('f([2,1,3,5,6,4,7])', () {
        expect(f(ListNode<int>.of([2, 1, 3, 5, 6, 4, 7]))?.toList(), equals(<int>[2, 3, 6, 7, 1, 5, 4]));
      });
    });
