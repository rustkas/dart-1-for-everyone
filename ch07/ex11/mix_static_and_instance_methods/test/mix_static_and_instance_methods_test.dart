import 'package:mix_static_and_instance_methods/mix_static_and_instance_methods.dart';
import 'package:test/test.dart';

void main() {
  group('[static_and_instance_methods]', (){
    var _neptune_is_real, _pluto_is_real;

    setUp((){
      var neptune = Planet('Neptune');
      var pluto = Planet('Pluto');

      _neptune_is_real =
        neptune.isRealPlanet      // => true
        ;

      _pluto_is_real =
        pluto.isRealPlanet        // => false
        ;
    });

    test('calling methods', (){
      expect(_neptune_is_real, isTrue);
      expect(_pluto_is_real, isFalse);
    });
  });
}
