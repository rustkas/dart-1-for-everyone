import 'package:first_order/first_order.dart';
import 'package:test/test.dart';

var _prints = [];
void print(val) => _prints.add(val);

void fib_printer(i) {
  print('Fib($i): ${fib(i)}');
}

Function anon = (i) {
  if (i < 2) return i;
  return fib(i - 2) + fib(i - 1);
};

void main() {
  group('[fib]', () {
    test('fib(1); // => 1', () {
      expect(fib(1), equals(1));
    });

    test('fib(5); // => 5', () {
      expect(fib(5), equals(5));
    });

    test('fib(10); // => 55', () {
      expect(fib(10), equals(55));
    });

    test('anonymous functions work too!', () {
      expect(anon(1), equals(1));
      expect(anon(5), equals(5));
      expect(anon(10), equals(55));
    });

    test('simple forEach example', () {
      _prints = [];
      var list = [1, 5, 8, 10];
      list.forEach((i) {
        fib_printer(i);
      });

      expect(_prints,
          equals(['Fib(1): 1', 'Fib(5): 5', 'Fib(8): 21', 'Fib(10): 55']));
    });

    test('hash rockets make everything nicer', () {
      _prints = [];
      var list = [1, 5, 8, 10];
      list.forEach((i) => fib_printer(i));

      expect(_prints,
          equals(['Fib(1): 1', 'Fib(5): 5', 'Fib(8): 21', 'Fib(10): 55']));
    });

    test('omit dupe parameter in hash rocket', () {
      _prints = [];
      var list = [1, 5, 8, 10];
      list.forEach(fib_printer);

      expect(_prints,
          equals(['Fib(1): 1', 'Fib(5): 5', 'Fib(8): 21', 'Fib(10): 55']));
    });
  });
}
