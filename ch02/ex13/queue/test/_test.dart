import 'dart:collection';

import 'package:test/test.dart';

// You have to have main method to launch your application
void main() {
  List _add_first;
  Queue _remove;

  group('[queue]', () {
    setUp(() {
      /* ------------------------- */
      var muppets = Queue.from(['Piggy', 'Rolf']);
      muppets.addFirst('Kermit');
      // muppets => ['Kermit', 'Piggy', 'Rolf']
      _add_first = muppets.toList();
      muppets.removeFirst();
      muppets.removeLast();
      // muppets => ['Piggy']
      /* ------------------------- */
      _remove = muppets;
    });

    test('can add an element to the beginning of the queue', () {
      expect(_add_first, equals(['Kermit', 'Piggy', 'Rolf']));
    });

    test('can remove elements from the front or back of the queue', () {
      expect(_remove, equals(['Piggy']));
    });
  });
}
