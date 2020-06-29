import 'package:optional/optional.dart';
import 'package:test/test.dart';




void main() {
  group('[optional parameters]', () {
    setUp(() => printsList = []);

    test('required only', () {
      good_day('Bob');
     
      // Good day, Bob.
      expect(printsList, equals(['Good day, Bob.']));
    });

    test('optional named parameter', () {
      good_day('Bob', emphatic: true);
      // Good day, Bob.
      // I said good day!

      expect(printsList, equals(['Good day, Bob.', 'I said good day!']));
    });

    test('default optional parameter', () {
      profile('Bob');
      // Name: Bob
      //   personal hero: Weird Al

      expect(printsList, equals(['Name: Bob', '  personal hero: Weird Al']));
    });

    test('specifying a default, optional parameter', () {
      profile('Bob', favorite_color: 'Purple', hero: 'Frank Drebin');
      // Name: Bob
      //   personal hero: Frank Drebin
      //   favorite color: Purple

      expect(
          printsList,
          equals([
            'Name: Bob',
            '  personal hero: Frank Drebin',
            '  favorite color: Purple'
          ]));
    });

    test('optional positional parameters', () {
      movie('The Naked Gun');
      // Great movie: The Naked Gun
      //   Starring: Leslie Nielson

      expect(printsList,
          equals(['Great movie: The Naked Gun', '  Starring: Leslie Nielson']));
    });

    test('specifying optional, positional parameters', () {
      movie('Airplane!', 'Robert Hays', 'Leslie Nielson');
      // Great movie: The Naked Gun
      //   Starring: Robert Hays
      //   Co-starring: Leslie Nielson

      expect(
          printsList,
          equals([
            'Great movie: Airplane!',
            '  Starring: Robert Hays',
            '  Co-starring: Leslie Nielson'
          ]));
    });
  });
}
