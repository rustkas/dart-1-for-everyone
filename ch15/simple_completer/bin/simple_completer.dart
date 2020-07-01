import 'dart:async';

void main() {
  var completer = Completer();
  completer.
    future.
    catchError((e) {
      print('Handled: $e');
      return true;
    });
  var exception = Exception('Too awesome');
  completer.completeError(exception);
}

// For testing. Comment out to run this code file directly...
var cb = (_) {};
void print(msg) => cb(msg);
