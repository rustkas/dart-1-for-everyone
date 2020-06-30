import 'package:constructor_this_parameter/constructor_this_parameter.dart';
import 'package:test/test.dart';

void main() {
  group('[constructor_this_param]', () {
    test('can construct', () {
      var comic = ComicBook({'title': 'Sandman'});
      expect(comic.attributes['title'], equals('Sandman'));
    });
  });
}
