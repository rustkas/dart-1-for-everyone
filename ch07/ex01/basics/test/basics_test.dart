import 'package:test/test.dart';
import 'package:basics/basics.dart';


void main() {
group('[basics]', (){
    test('instantiation', (){
      var object = ComicsCollection();
      expect(object, isNotNull);
    });

    test('ivar getter', (){
      var comics_view = ComicsView();
      comics_view.collection;
      // => instance of ComicsCollection
      expect(()=>comics_view.collection, returnsNormally);
    });

    test('ivar setter', (){
      var new_collection = ['foo', 'bar'];
      var comics_view = ComicsView();
      comics_view.collection = new_collection;
      expect(comics_view.collection, equals(['foo', 'bar']));
    });
  });
}
