import 'package:implements_multiple/implements_multiple.dart';
import 'package:test/test.dart';

void main() {
  group('[implements_multiple]', (){
    test('implements the interface', (){
      var comics = ComicsCollection();
      expect(
        comics.isEmpty,
        isFalse
      );
    });

  });
}
