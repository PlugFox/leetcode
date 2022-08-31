import 'package:leetcode/src/structure/list_node.dart';
import 'package:test/test.dart';

void main() => group('list_node', () {
      test('create', () {
        expect(() => ListNode(1), returnsNormally);
        expect(ListNode(1), isA<ListNode>());
        expect(ListNode(1).val, equals(1));
      });

      test('list', () {
        expect(ListNode.of(<int>[1, 2, 3]), containsAllInOrder(<int>[1, 2, 3]));
      });

      test('toString', () {
        expect(ListNode.of(<int>[1, 2, 3]).toString(), equals('(1, 2, 3)'));
      });

      test('throws_from_empty_list', () {
        expect(() => ListNode.of(<int>[]), throwsA(isA<Exception>()));
      });
    });
