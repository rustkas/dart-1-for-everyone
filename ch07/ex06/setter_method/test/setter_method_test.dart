import 'package:setter_method/setter_method.dart';
import 'package:test/test.dart';

void main() {
  group('[setter_methods]', () {
    test('behave like properties', () {
      final comics_collection = ComicsCollection();
      final shiny_new_url = '/comics';

      comics_collection.url = shiny_new_url;

      expect(comics_collection.url, equals(shiny_new_url));
    });
  });
}
