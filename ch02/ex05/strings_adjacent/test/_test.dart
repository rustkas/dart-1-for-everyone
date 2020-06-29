import 'package:test/test.dart';

void main() {
  String _str1, _str2, _str3;

  group('[string adjacent]', () {
    setUp(() {
      _str1 = 'foo'; // 'foo bar'
      _str1 += ' ';
      _str1 += 'bar';

      _str2 =
          'foo' /* - */ ' ' /* - */ 'bar'; // 'foo bar'
      
      _str3 =
          /* ------------------------- */
          'foo'
          ' '
          'bar'; // 'foo bar'
      /* ------------------------ */
    });

    test('adjacent strings plussed are concatenated', () {
      expect(_str1, equals('foo bar'));
    });

    test('adjacent strings are concatenated', () {
      expect(_str2, equals('foo bar'));
    });

    test('adjacent concatenation works on separate lines', () {
      expect(_str3, equals('foo bar'));
    });
  });
}
