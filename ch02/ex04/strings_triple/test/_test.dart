import 'package:test/test.dart';

void main() {
  String _str1;
  group('[string triple quote]', () {
    setUp(() {
      _str1 =
          /* ------------------------- */
          '''Line #1
      Line #2
      Line #3''';
      /* ------------------------- */
    });

    test('multiline strings work inside triple quotes', () {
      expect(_str1, equals('Line #1\n      Line #2\n      Line #3'));
    });
  });
}
