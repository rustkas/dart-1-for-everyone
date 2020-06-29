import 'package:subclasses/subclasses.dart';
import 'package:test/test.dart';

void main() {
group('[subclasses]', (){
    test('still works like superclass', (){
      var comics = Comics();
      expect(
        comics.url,
        equals('/comics')
      );
    });

  });
}
