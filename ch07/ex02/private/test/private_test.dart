import 'package:private/private.dart';
import 'package:private/util.dart';
import 'package:test/test.dart';

void main() {
  group('[private]', () {
    test('has no setter', () {
      var view = ComicsView();

      void assign_non_existent_setter() {
        @IntentionalError('Demonstrate non-existent setter call')
        var collection = view.collection = ComicsCollection();
        print(collection);
      }
     // you have catch the error in the IDE editor before you lauch the test
      // expect(assign_non_existent_setter, throwsNoSuchMethodError);

      // user returnNormally insted for this test
      expect(assign_non_existent_setter, returnsNormally);
    });

    test('getter works only if explicitly defined', () {
      var view = ComicsView();
      expect(() => view.collection, returnsNormally);
    });
  });
}
