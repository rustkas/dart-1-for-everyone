import 'package:generative_constructor/generative_constructor.dart';
import 'package:test/test.dart';

void main() {
  group('[generative_constructor]', (){
    test('can construct', (){
      var comics = ComicsCollection();
      expect(
        comics.models.length,
        equals(0)
      );
    });

  });
}
