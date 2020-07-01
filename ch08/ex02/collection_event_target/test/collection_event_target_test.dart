import 'package:collection_event_target/collection_event_target.dart';
import 'package:test/test.dart';

void main() {
  group('[collection_event_target]', (){
    test('adding listeners', (){
      var hipster_collection = ComicsCollection();

      hipster_collection.onAdd
        ..listen((model) { /* listener #1 */ })
        ..listen((model) { /* listener #2 */ })
        ..listen((model) { /* listener #3 */ });

      void _test(model) {
        expect(model, isNotNull);
      }

      hipster_collection.onAdd
        ..listen((model) { /* listener #1 */ })
        ..listen(_test);
    });

  });
}
