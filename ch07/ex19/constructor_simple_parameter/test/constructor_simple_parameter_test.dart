import 'package:constructor_simple_parameter/constructor_simple_parameter.dart';
import 'package:test/test.dart';

void main() {
  group('[constructor_simple_params]', () {
    test('can construct', () {
      var comic = ComicBook({'title': 'Sandman'});
      expect(comic.attributes['title'], equals('Sandman'));
    });
  });
}
