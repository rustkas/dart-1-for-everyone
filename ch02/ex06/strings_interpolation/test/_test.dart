import 'package:test/test.dart';

class ComicBook{
  var title;
  ComicBook(this.title);
}
// You have to have main method to launch your application
void main() {
  String _str1, _str2;

group('[string interpolation]', (){
    setUp((){
      /* ------------------------- */
      var name = 'Bob';

      'Howdy, $name'; //  'Howdy, Bob'
      /* ------------------------1 */
      _str1 = 'Howdy, $name';

      /* ------------------------- */
      var comic_book = ComicBook('Sandman');

      'The very excellent ${comic_book.title}!';
      // 'The very excellent Sandman!'
      /* ------------------------2 */
      _str2 = 'The very excellent ${comic_book.title}!';
    });

    test('variables can be interpolated', (){
      expect(_str1, equals('Howdy, Bob'));
    });

    test('expressions can be interpolated', (){
      expect(_str2, equals('The very excellent Sandman!'));
    });
  });
  
}
