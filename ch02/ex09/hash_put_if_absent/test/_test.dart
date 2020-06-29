




// You have to have main method to launch your application
import 'package:test/test.dart';

void main() {
  var _ugly, _weak, _confident;
  
 group('[hash_put_if_absent]', (){
    setUp((){
      /* ------------------------- */
      var options = {};

      if (!options.containsKey('age')) {
        var dob = DateTime.parse('2000-01-01'),
            now =  DateTime.now();
        options['age'] = now.year - dob.year;
      }
      _ugly = options['age'];

    int findAge() {
        var dob = DateTime.parse('2000-01-01'),
            now = DateTime.now();
        return now.year - dob.year;
      };

      // weak
      if (!options.containsKey('age')) {
        options['age'] = findAge();
      }
      _weak = options['age'];

      // confident
      options.putIfAbsent('age', findAge);
      _confident = options['age'];
      /* ------------------------- */
    });

    test('putIfAbsent has the equivalent result as messy conditionals', (){
      expect(_confident, equals(_ugly));
      expect(_confident, equals(_weak));
      expect(_confident, greaterThanOrEqualTo(12));
    });
  });
}
