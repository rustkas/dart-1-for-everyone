import 'package:dry_constructors/dry_constructors.dart';
import 'package:test/test.dart';

class AwesomeComicBook extends ComicBook {
  AwesomeComicBook(attrs): super(attrs);
  AwesomeComicBook.byNeilGaiman(): this({'author': 'Neil Gaiman'});
  AwesomeComicBook.byAlanMoore(): this({'author': 'Alan Moore'});
}

void main() {
group('[dry_constructor]', (){
    test('can construct the same way', (){
      var c1 = ComicBook({'title': 'Sandman'});
      var c2 = ComicBook.named('Sandman');
      expect(
        c1.attributes['title'],
        equals(c2.attributes['title'])
      );
    });

    test('redirecting in subclass', (){
      var ng = AwesomeComicBook.byNeilGaiman();
      var am = AwesomeComicBook.byAlanMoore();
      expect(ng.attributes['author'], equals('Neil Gaiman'));
      expect(am.attributes['author'], equals('Alan Moore'));
    });

  });
}
