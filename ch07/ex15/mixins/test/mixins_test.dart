import 'package:mixins/mixins.dart';
import 'package:test/test.dart';

void main() {
 group('[mixins]', (){
    test('call mixin from one class', (){
      var say_hi = Friend('Alice').greet();
      // => 'Howdy Alice!'

      expect(say_hi , equals('Howdy Alice!'));
    });

    test('call mixin from one class', (){
      var say_hi = Pet('Snoopy').greet();
      // => 'Howdy Snoopy!'

      expect(say_hi , equals('Howdy Snoopy!'));
    });
  });
}
