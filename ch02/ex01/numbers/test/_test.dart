import 'package:test/test.dart';

void main() {

  num _num1, _num2, _num3, _num4;
  group('[numbers]', () {
    setUp(() {
      /* ------------------------- */
      2 + 2; // 4
      2.2 + 2; // 4.2
      2 + 2.2; // 4.2
      2.2 + 2.2; // 4.4
      /* ------------------------- */

      _num1 = 2 + 2; // 4
      _num2 = 2.2 + 2; // 4.2
      _num3 = 2 + 2.2; // 4.2
      _num4 = 2.2 + 2.2; // 4.4
    });

    test('2 + 2 = 4', () {
      expect(_num1, equals(4));
    });

    test('2.2 + 2 = 4.2', () {
      expect(_num2, equals(4.2));
    });

    test('2 + 2.2 = 4.2', () {
      expect(_num3, equals(4.2));
    });

    test('2.2 + 2.2 = 4.4', () {
      expect(_num4, equals(4.4));
    });
  });
}
