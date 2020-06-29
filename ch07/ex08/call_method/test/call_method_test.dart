import 'package:call_method/call_method.dart';
import 'package:test/test.dart';

void main() {
  group('[call_operator]', (){
    test('can masquerade as a function', (){
      var comic = ComicModel();

      comic();

      expect(comic.isTrue, equals(true));
    });
  });
}
