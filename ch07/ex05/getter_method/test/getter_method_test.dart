import 'package:getter_method/getter_method.dart';
import 'package:test/test.dart';

void main() {
  group('[getter_methods]', (){
    test('behave like properties', (){
      final comics_collection = ComicsCollection();

      final url =
      // No parens required!
      comics_collection.url;      // => '/comics'
      expect(
        url,
        equals('/comics')
      );
    });
  });
}
