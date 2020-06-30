import 'package:constructor_optional_this/constructor_optional_this.dart';
import 'package:test/test.dart';

void main() {
  group('[optional_this_param]', () {
    test('can construct with optional params', () {
      var comic_book = ComicModel();
      var view = ComicsView(model: comic_book);
      expect(view.el, isNotNull);
      expect(view.el is DivElement, isTrue);
      expect(view.model, equals(comic_book));
    });
  });
}
