import 'package:leetcode/src/problem/remove_duplicates_from_sorted_array.26.dart';
import 'package:test/test.dart';

void main() => group('remove_duplicates_from_sorted_array.26', () {
      final f = RemoveDuplicatesFromSortedArray();

      test('f([])', () {
        final list = <int>[];
        final result = f(list);
        expect(list, isEmpty);
        expect(result, equals(0));
      });

      test('f([1,1,2])', () {
        final list = <int>[1, 1, 2];
        final result = f(list);
        expect(list, containsAllInOrder(<int>[1, 2]));
        expect(result, equals(2));
      });

      test('f([0,0,1,1,1,2,2,3,3,4])', () {
        final list = <int>[0, 0, 1, 1, 1, 2, 2, 3, 3, 4];
        final result = f(list);
        expect(list, containsAllInOrder(<int>[0, 1, 2, 3, 4]));
        expect(result, equals(5));
      });
    });
