import 'package:leetcode/src/problem/328.odd_even_linked_list.dart';
import 'package:leetcode/src/structure/list_node.dart';
import 'package:test/test.dart';

void main() => group('longest_increasing_subsequence', () {
      final f = Solution().oddEvenList;

      test('f([])', () {
        expect(f(null)?.toList(), isNull);
      });

      test('f([1,2,3,4,5])', () {
        expect(f(ListNode<int>.of([1, 2, 3, 4, 5]))?.toList(), equals(<int>[1, 3, 5, 2, 4]));
      });

      test('f([2,1,3,5,6,4,7])', () {
        expect(f(ListNode<int>.of([2, 1, 3, 5, 6, 4, 7]))?.toList(), equals(<int>[2, 3, 6, 7, 1, 5, 4]));
      });
    });
