import 'package:ry_constructors/ry_constructors.dart';
import 'package:test/test.dart';

void main() {
  group('[non_dry_constructor]', (){
    test('can construct the same way', (){
      var c1 = ComicBook({'title': 'Sandman'});
      var c2 = ComicBook.named('Sandman');
      expect(
        c1.attributes['title'],
        equals(c2.attributes['title'])
      );
    });

  });
}
