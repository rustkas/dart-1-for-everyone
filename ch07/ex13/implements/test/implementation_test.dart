import 'package:implements/implementation.dart';
import 'package:test/test.dart';

void main() {
  group('[implements]', (){
    test('implements the interface', (){
      var comics = ComicsCollection();
      expect(
        comics.length,
        equals(2)
      );
    });

  });
}
