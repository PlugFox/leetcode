import 'package:leetcode/src/problem/duplicate_zeros.1089.dart';
import 'package:test/test.dart';

void main() => group('duplicate_zeros.1089', () {
      final f = DuplicateZeros();

      test('f([1,0,2,3,0,4,5,0])', () {
        final list = [1, 0, 2, 3, 0, 4, 5, 0];
        f(list);
        expect(list, equals([1, 0, 0, 2, 3, 0, 0, 4]));
      });

      test('f([1,2,3])', () {
        final list = [1, 2, 3];
        f(list);
        expect(list, equals([1, 2, 3]));
      });
    });
