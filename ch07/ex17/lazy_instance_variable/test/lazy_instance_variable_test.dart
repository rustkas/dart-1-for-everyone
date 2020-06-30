import 'package:test/test.dart';
import 'package:lazy_instance_variable/lazy_instance_variable.dart';

void main() {
  group('[lazy_ivars]', () {
    test('can construct', () {
      var comics = ComicsCollection();
      expect(comics.models.length, equals(0));
    });
  });
}
