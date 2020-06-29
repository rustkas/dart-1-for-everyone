import 'package:test/test.dart';
import 'package:operators/operators.dart';

void main() {
  group('[operators]', () {
    test('objects can override operators', () {
      var comic = ComicModel();

      comic.attributes = {'title': 'V for Vendetta'};

      var lookup_value = comic['title'] // => "V for Vendetta"
          ;

      expect(lookup_value, equals('V for Vendetta'));
    });

    test('all operators', () {
      var hell = OperatorHell();
      // expect(hell == 42, isTrue);
      expect(hell < 42, isTrue);
      expect(hell > 42, isTrue);
      expect(hell <= 42, isTrue);
      expect(hell >= 42, isTrue);
      expect(hell + 42, isTrue);
      expect(hell - 42, isTrue);
      expect(hell / 42, isTrue);
      expect(hell * 42, isTrue);
      expect(hell % 42, isTrue);
      expect(hell | 42, isTrue);
      expect(hell ^ 42, isTrue);
      expect(hell & 42, isTrue);
      expect(hell << 42, isTrue);
      expect(hell >> 42, isTrue);
      expect(() => hell[42] = 42, returnsNormally);
      expect(hell[42], isTrue);
      expect(~hell, isTrue);
    });
  });
}
