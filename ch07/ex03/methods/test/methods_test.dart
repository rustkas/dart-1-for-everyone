import 'package:methods/methods.dart';
import 'package:test/test.dart';

void main() {
  group('[methods]', () {
    test('methods are named functions in a class', () {
      var view = ComicsView();
      view.render();
      expect(el.innerHtml, equals('foo'));
    });
  });
}
