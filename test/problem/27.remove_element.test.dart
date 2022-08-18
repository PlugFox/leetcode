import 'package:leetcode/src/problem/27.remove_element.dart';
import 'package:test/test.dart';

void main() => group('remove_element', () {
      final f1 = RemoveElementV1();
      final f2 = RemoveElementV2();

      test('f([3,2,2,3], 3)', () {
        {
          final list = <int>[3, 2, 2, 3];
          final result = f1(list, 3);
          expect(list, isNot(contains(3)));
          expect(list, containsAll(<int>[2, 2]));
          expect(result, equals(2));
        }
        {
          final list = <int>[3, 2, 2, 3];
          final result = f2(list, 3);
          expect(list, isNot(contains(3)));
          expect(list, containsAll(<int>[2, 2]));
          expect(result, equals(2));
        }
      });

      test('f([0,1,2,2,3,0,4,2], 2)', () {
        {
          final list = <int>[0, 1, 2, 2, 3, 0, 4, 2];
          final result = f1(list, 2);
          expect(list, isNot(contains(2)));
          expect(list, containsAll(<int>[0, 1, 4, 0, 3]));
          expect(result, equals(5));
        }
        {
          final list = <int>[0, 1, 2, 2, 3, 0, 4, 2];
          final result = f2(list, 2);
          expect(list, isNot(contains(2)));
          expect(list, containsAll(<int>[0, 1, 4, 0, 3]));
          expect(result, equals(5));
        }
      });

      test('f([3, 3], 3)', () {
        {
          final list = <int>[3, 3];
          final result = f1(list, 3);
          expect(list, isNot(contains(3)));
          expect(result, equals(0));
        }
        {
          final list = <int>[3, 3];
          final result = f2(list, 3);
          expect(list, isNot(contains(3)));
          expect(result, equals(0));
        }
      });
    });
