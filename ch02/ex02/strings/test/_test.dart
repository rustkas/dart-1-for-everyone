import 'package:test/test.dart';

void main() {

String _str1, _str2;
  
 group('[strings]', (){
    setUp((){
      /* ------------------------- */
      var str1 = 'foo',
          str2 = str1;
      str1.hashCode; // 596015325
      str2.hashCode; // 596015325
      /* ------------------------- */

      _str1 = str1;
      _str2 = str2;
    });

    test('"foo" is 596015325', (){
      expect(_str1.hashCode, equals(596015325));
    });

    test('copy of "foo" is 596015325', (){
      expect(_str2.hashCode, equals(596015325));
    });
  });

}
