import 'package:named_constructor/named_constructor.dart';
import 'package:test/test.dart';

void main() {
 group('[named_constructor]', (){
    test('can construct', (){
      var comics = ComicsCollection.fromCollection([
        {'id': 1, 'title': 'V for Vendetta', /* ... */ },
        {'id': 2, 'title': 'Superman', /* ... */ },
        {'id': 3, 'title': 'Sandman', /* ... */ }
      ]);
      expect(
        comics.models.length,
        equals(3)
      );
    });

  });
}
