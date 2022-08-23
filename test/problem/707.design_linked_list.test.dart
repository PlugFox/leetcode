import 'package:leetcode/src/problem/707.design_linked_list.dart';
import 'package:test/test.dart';

void main() => group('design_linked_list', () {
      late MyLinkedList list;

      setUp(() {
        list = MyLinkedList()
          ..addAtTail(1)
          ..addAtTail(2)
          ..addAtTail(3);
      });

      test('get', () {
        expect(list.get(0), equals(1));
        expect(list.get(1), equals(2));
        expect(list.get(2), equals(3));
      });

      test('addAtHead', () {
        list.addAtHead(9);
        expect(list.get(0), equals(9));
      });

      test('addAtTail', () {
        list.addAtTail(9);
        expect(list.get(3), equals(9));
      });

      test('addAtIndex', () {
        list.addAtIndex(2, 9);
        expect(list.get(2), equals(9));
      });

      test('deleteAtIndex', () {
        list.deleteAtIndex(1);
        expect(list.get(0), equals(1));
        expect(list.get(1), equals(3));
      });

      test('reverse_add', () {
        final list = MyLinkedList()
          ..addAtHead(1)
          ..addAtHead(2)
          ..addAtHead(3);
        expect(list.get(0), equals(3));
        expect(list.get(1), equals(2));
        expect(list.get(2), equals(1));
      });
    });
