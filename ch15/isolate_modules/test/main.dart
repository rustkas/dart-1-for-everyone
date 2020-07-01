import 'dart:isolate';

final List<String> dayNames = [
  'Mon',
  'Tues',
  'Wed',
  'Thurs',
  'Fri',
  'Sat',
  'Sun'
];

String dayOfDoom(year) {
  var march1 = DateTime(year, 3, 1, 0, 0, 0, 0),
      oneDay = Duration(days: 1),
      date = march1.subtract(oneDay);

  return dayNames[date.weekday - 1];
}

void main(List<String> args, SendPort replyTo) {
  try {
    var year = int.parse(args[0]);
    var doomsday = dayOfDoom(year);
    replyTo.send(doomsday);
  
  } on FormatException catch (_) {
    print('Format exemption');
  }
}
