import 'package:test/test.dart';

// You have to have main method to launch your application
void main() {
  List _muppets1, _primes;
  List<String> _set_range_muppets, _remove_range_muppets, _add_all_muppets;

  group('[lists]', () {
    setUp(() {
      /* ------------------------- */
      var muppets = ['The Count', 'Bert', 'Ernie', 'Snuffleupagus'];
      var primes = [1, 2, 3, 5, 7, 11];
      // Indexed from zero
      muppets[0]; // 'The Count'
      primes.length; // 6
      _muppets1 = muppets;
      _primes = primes;

      muppets.setRange(1, 3, ['Kermit', 'Oscar']);
      // muppets => ['The Count', 'Kermit', 'Oscar', 'Snuffleupagus']
      _set_range_muppets = muppets.toList();

      muppets.removeRange(1, 3);
      // muppets => ['The Count', 'Snuffleupagus'];
      _remove_range_muppets = muppets.toList();

      muppets.addAll(['Elmo', 'Cookie Monster']);
      // muppets => ['The Count', 'Snuffleupagus', 'Elmo', 'Cookie Monster']
      _add_all_muppets = muppets;

      /* ------------------------- */
    });

    test('lists are indexed from zero', () {
      expect(_muppets1[0], equals('The Count'));
    });

    test('lists have length', () {
      expect(_primes.length, equals(6));
    });

    test('setRange is zero indexed', () {
      expect(_set_range_muppets,
          equals(['The Count', 'Kermit', 'Oscar', 'Snuffleupagus']));
    });

    test('removeRange is zero indexed', () {
      expect(_remove_range_muppets, equals(['The Count', 'Snuffleupagus']));
    });

    test('addAll appends another list to the end', () {
      expect(_add_all_muppets,
          equals(['The Count', 'Snuffleupagus', 'Elmo', 'Cookie Monster']));
    });
  });
}
