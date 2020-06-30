import 'package:singleton/singleton.dart';
import 'package:test/test.dart';

void main() {
group('[singleton]', (){
    test('there is only one', (){
      var highlander = Highlander('Connor MacLeod');
      var another = Highlander('Kurgan');
      highlander.name;
      // => 'Connor MacLeod'
      // Nice try Kurgan...
      another.name;
      // => 'Connor MacLeod'

      expect(
        highlander.name,
        equals(another.name)
      );
    });
  });
}
