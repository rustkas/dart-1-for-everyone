import 'package:test/test.dart';

// You have to have main method to launch your application
void main() {
  DateTime _mar, _now, _apr, _may, _jul;
  Duration _diff;

  group('[dates]', (){
    setUp((){
      /* ------------------------- */
      var mar = DateTime.parse('2013-03-01 14:31:12');
      // 2013-03-01 14:31:12.000
      var now = DateTime.now();
      // 2012-12-31 23:59:59.149
      var apr = DateTime(2013, 4, 1);
      // 2013-04-01 00:00:00.000
      var may = DateTime(2013, 5, 1, 18, 18, 18);
      // 2013-05-01 18:18:18.000

      var jun = DateTime(2013, 6, 1, 0, 0, 0, 0);
      var jul = DateTime(2013, 7, 1, 0, 0, 0, 0);
      var diff = jul.difference(jun);
      diff.inDays; // => 30
      _diff = diff;
      jul.add(Duration(days: 15)); // => 2013-07-16
      /* ------------------------- */
      _mar = mar;
      _now = now;
      _apr = apr;
      _may = may;
      _jul = jul;
    });

    test('can make a date from a string', (){
      expect(_mar.toString(), equals('2013-03-01 14:31:12.000'));
    });

    test('can make a now date', (){
      var new_now = DateTime.now();
      expect(new_now.difference(_now).inMinutes, isZero);
    });

    test('can make just a date', (){
      expect(_apr.toString(), equals('2013-04-01 00:00:00.000'));
    });

    test('can make a date / time', (){
      expect(_may.toString(), equals('2013-05-01 18:18:18.000'));
    });

    test('can calculate differences', (){
      expect(_diff.inDays, equals(30));
    });

    test('can add N number of a days to a date', (){
      expect(_jul.add(Duration(days: 15)), equals(DateTime(2013, 7, 16)));
    });
  });
}
