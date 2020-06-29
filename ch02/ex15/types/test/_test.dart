import 'dart:collection';
import 'package:test/test.dart';
import 'package:types/util.dart';

// You have to have main method to launch your application
void main() {

  group('[types]', () {
    setUp(() {
      /* ------------------------- */
      /* ------------------------- */
    });

    test('assign number to a variable previously assigned a string', () {
      expect(() {
        dynamic muppet = 'Piggy';

        // Dart, like JavaScript, allows this, but come on!
        muppet = 42;
        print(muppet);
      }, returnsNormally);
    });

    group('assign number to a variable declared as String', () {
      @IntentionalError('Demonstrating no compiler or run error')
      dynamic muppet = 'Piggy';
      muppet = 42;
      /* What happens now????! */

      test(' -- is now a number', () {
        @IntentionalError('Runtime now treats this as a number')
        dynamic _muppet_math = muppet + 17;
        // 59
        expect(_muppet_math, equals(59));
      });
    });

    test('good manners with types', () {
      expect(() {
        var i = 0;
        var is_done = false;
        var muppet = 'Piggy';
        var now = DateTime.now();
        print(i);
        print(is_done);
        print(muppet);
        print(now);
      }, returnsNormally);
    });

    test('types can contain types', () {
      expect(() {
        var is_awesome = HashMap<String, bool>.from({
          'Scooter': false,
          'Bert': true,
          'Ernie': false
        });

        var primes = <int>[1, 2, 3, 5, 7, 11];
        print(is_awesome);
        print(primes);
      }, returnsNormally);
    });
  });
}
