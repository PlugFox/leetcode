import 'package:leetcode/src/structure/list_node.dart';
import 'package:test/test.dart';

void main() => group('list_node', () {
      test('create', () {
        expect(() => ListNode<int>(1), returnsNormally);
        expect(ListNode<int>(1), isA<ListNode<int>>());
        expect(ListNode<int>(1).value, equals(1));
      });

      test('list', () {
        expect(ListNode<int>.of(<int>[1, 2, 3]), containsAllInOrder(<int>[1, 2, 3]));
      });

      test('toString', () {
        expect(ListNode<int>.of(<int>[1, 2, 3]).toString(), equals('(1, 2, 3)'));
      });

      test('throws_from_empty_list', () {
        expect(() => ListNode<int>.of(<int>[]), throwsA(isA<Exception>()));
      });
    });
