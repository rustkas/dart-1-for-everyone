import 'package:test/test.dart';

String _str1, _str2, _str3;

// You have to have main method to launch your application
void main() {
  group('[booleans]', () {
    setUp(() {
      /* ------------------------- */
      var name, greeting;
      if (name != null) {
        greeting = 'Howdy $name';
      } else {
        greeting = 'Howdy';
      }
      _str1 = greeting;
      greeting = null;

      // 'Howdy'

      /*** Name is still not true ***/
      
      if (name != null) {
        greeting = 'Howdy $name';
      } else {
        greeting = 'Howdy';
      }
      _str2 = greeting;
      greeting = null;

      // 'Howdy'

      name = 'Bob';
      if (name != null) {
        greeting = 'Howdy $name';
      } else {
        greeting = 'Howdy';
      }
      _str3 = greeting;
      // 'Howdy Bob'

      /* ------------------------- */
    });

    test('null is false', () {
      expect(_str1, equals('Howdy'));
    });

    test('string is false', () {
      expect(_str2, equals('Howdy'));
    });

    test('only booleans can be true', () {
      expect(_str3, equals('Howdy Bob'));
    });
  });
}
