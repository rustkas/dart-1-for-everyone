void good_day(name, {emphatic}) {
  if (name != null) {
    print('Good day, ${name}.');
  }

  if (emphatic != null && emphatic) {
    print('I said good day!');
  }
}

void profile(name, {hero = 'Weird Al', favorite_color}) {
  print('Name: ${name}');
  print('  personal hero: ${hero}');
  if (favorite_color != null) {
    print('  favorite color: ${favorite_color}');
  }
}

void movie(title, [starring = 'Leslie Nielson', co_starring]) {
  print('Great movie: ${title}');
  print('  Starring: ${starring}');
  if (co_starring != null) {
    print('  Co-starring: ${co_starring}');
  }
}

var printsList = [];
void print(val) => printsList.add(val);
