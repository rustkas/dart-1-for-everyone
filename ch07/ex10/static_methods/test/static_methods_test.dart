import 'package:test/test.dart';
import 'package:static_methods/static_methods.dart';
void main() {
  group('[static_methods]', (){
    test('calling methods', (){
      var planets =
        Planet.known
        // => ['Mercury', 'Venus', 'Earth', 'Mars',
        //     'Jupiter', 'Saturn', 'Uranus', 'Neptune' ]
        ;

      expect(
        planets,
        contains('Neptune')
      );
    });
  });
}
