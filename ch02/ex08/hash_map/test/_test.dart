import 'package:test/test.dart';

var _vals = [];


// You have to have main method to launch your application
void main() {
  group('[hash_maps]', () {
    setUp(() {
      /* ------------------------- */
      var options = {'color': 'red', 'number': 2};

      options['number']; // 2

      _vals.add(options['number']);

      options.forEach((k, v) {
        print('$k: $v');
      });
      // number: 2
      // color: red
      /* ------------------------- */
    });

    test('hash lookup', () {
      expect(_vals[0], equals(2));
    });

    test('foreach looping', () {
      expect(_vals, contains('number: 2'));
      expect(_vals, contains('color: red'));
    });
  });
}
