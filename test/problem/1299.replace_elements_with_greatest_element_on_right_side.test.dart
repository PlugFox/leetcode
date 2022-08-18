import 'package:leetcode/src/problem/1299.replace_elements_with_greatest_element_on_right_side.dart';
import 'package:test/test.dart';

void main() => group('replace_elements_with_greatest_element_on_right_side', () {
      final f = Solution().replaceElements;

      test('f([])', () {
        expect(f(<int>[]), equals(<int>[]));
      });

      test('f([400])', () {
        expect(f(<int>[400]), equals(<int>[-1]));
      });

      test('f([17,18,5,4,6,1])', () {
        expect(
          f(<int>[17, 18, 5, 4, 6, 1]),
          equals(<int>[18, 6, 6, 6, 1, -1]),
        );
      });

      test('f([57010,40840,69871,14425,70605])', () {
        expect(
          f(<int>[57010, 40840, 69871, 14425, 70605]),
          equals(<int>[70605, 70605, 70605, 70605, -1]),
        );
      });
    });
