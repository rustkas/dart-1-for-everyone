import 'package:test/test.dart';
import 'dart:isolate';
// import 'dart:async';

//  var _printStreamController = StreamController();
//  var _printStream = Stream.castFrom(_printStreamController.stream);

// void print(val) {
//   _printStreamController.add(val);
// }

void main() {
  group('[isolates]', () {
    test('can send back replies', () {
      var res = ReceivePort();
      var sender =
          Isolate.spawnUri(Uri.parse('main.dart'), ['2019'], res.sendPort);
      sender.then((_) => res.first).then((message) {
        print('Doom in 2014 falls on a ${message}.');
      });

      // _printStream.listen(expectAsync1((message) {
      //   expect(message, 'Doom in 2019 falls on a Fri.');
      // }));
    });
  });
}
