import 'package:method_with_type/method_with_type.dart';
import 'package:test/test.dart';

void main() {
group('[method_type]', (){
    test('be a good citizen with method types', (){
      final view = ComicsView();
      view.render();
      expect(
        el.innerHtml,
        equals('foo')
      );
    });
  });
}
