import 'package:test/test.dart';

// You have to have main method to launch your application
void main() {
  Set _sesame, _muppets;
  group('[sets]', () {
    setUp(() {
      /* ------------------------- */
      var sesame = {'Kermit', 'Bert', 'Ernie'};
      var muppets = {'Piggy', 'Kermit'};
      // No effect b/c Ernie is already in the Set
      sesame.add('Ernie'); // => ['Kermit', 'Bert', 'Ernie']
      sesame.intersection(muppets); // => ['Kermit']
      sesame.containsAll(muppets); // => false
      /* ------------------------- */
      _sesame = sesame;
      _muppets = muppets;
    });

    test('cannot add element that is already in the set', () {
      expect(_sesame.length, equals(3));
    });

    test('can find intersections of sets', () {
      expect(_sesame.intersection(_muppets), equals(['Kermit']));
    });

    test('can ask if one set is a subset of another', () {
      expect(_sesame.contains(_muppets), isFalse);
    });
  });
}
