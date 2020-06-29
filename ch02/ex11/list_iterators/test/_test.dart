import 'package:test/test.dart';

// You have to have main method to launch your application
void main() {
  bool _any, _every;
  List<String> _where;
  num _fold;

  var _for_each = [];

  group('[list iterators]', () {
    setUp(() {
      /* ------------------------- */
      var muppets = ['The Count', 'Bert', 'Ernie', 'Snuffleupagus'];

      muppets.forEach((muppet) {
        print('$muppet is a muppet.');
      });
      // =>
      // The Count is a muppet.
      // Bert is a muppet.
      // Ernie is a muppet.
      // Snuffleupagus is a muppet.

      _any = muppets.any((muppet) {
        return muppet.startsWith('S');
      });
      // true

      _every = muppets.every((muppet) {
        return muppet.startsWith('S');
      });
      // false

      _where = muppets.where((muppet) {
        return muppet.startsWith('S');
      });
      // ['Snuffleupagus']

      _fold = muppets.fold(0, (memo, muppet) {
        return memo + muppet.length;
      });
      // 31

      /* ------------------------- */
    });

    test('can forEach', () {
      expect(
          _for_each,
          equals([
            'The Count is a muppet.',
            'Bert is a muppet.',
            'Ernie is a muppet.',
            'Snuffleupagus is a muppet.'
          ]));
    });

    test('can report if some elements match', () {
      expect(_any, isTrue);
    });

    test('can report if every elements match', () {
      expect(_every, isFalse);
    });

    test('can where', () {
      expect(_where, equals(['Snuffleupagus']));
    });

    test('can fold', () {
      expect(_fold, equals(31));
    });
  });
}
