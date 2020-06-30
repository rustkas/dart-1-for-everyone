class Highlander {
  static Highlander the_one;
  String name;

  factory Highlander(name) {
    the_one ??= Highlander._internal(name);
    return the_one;
  }

  // private, named constructor
  Highlander._internal(this.name);
}
