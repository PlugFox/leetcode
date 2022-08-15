import 'package:leetcode/src/problem/replace_elements_with_greatest_element_on_right_side.1299.dart';
import 'package:test/test.dart';

void main() => group('replace_elements_with_greatest_element_on_right_side.1299', () {
      final f = ReplaceElementsWithGreatestElementOnRightSide();

      test('f([400])', () {
        expect(f([400]), equals([-1]));
      });

      test('f([17,18,5,4,6,1])', () {
        expect(f([17, 18, 5, 4, 6, 1]), equals([18, 6, 6, 6, 1, -1]));
      });

      test('f([57010,40840,69871,14425,70605])', () {
        expect(f([57010, 40840, 69871, 14425, 70605]), equals([70605, 70605, 70605, 70605, -1]));
      });
    });
