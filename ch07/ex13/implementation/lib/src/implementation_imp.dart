import 'dart:collection';

class ComicsCollection extends IterableBase<String> {
  List<String> models = <String>['Sandman', 'V for Vendetta'];

  @override
  String join([String sep = '']) => models.join(sep);
  @override
  int get length => models.length;
  @override
  bool get isEmpty => models.isEmpty;
  @override
  bool get isNotEmpty => models.isNotEmpty;
  @override
  Iterator<String> get iterator => models.iterator;
  @override
  Iterable<T> map<T>(T Function(String e) f) => models.map(f);
  @override
  void forEach(void Function(String element) f) => models.forEach(f);
  @override
  bool contains(element) => models.contains(element);
  @override
  String reduce(fn) => models.reduce(fn);
  @override
  bool every(fn) => models.every(fn);
  @override
  bool any(fn) => models.any(fn);
  @override
  Iterable<String> skip(n) => models.skip(n);
  @override
  Set<String> toSet() => models.toSet();
  @override
  String get last => models.last;
  @override
  String get single => models.single;
  @override
  String singleWhere(bool Function(String element) test,
          {String Function() orElse}) =>
      models.singleWhere(test, orElse: orElse);
  @override
  T fold<T>(
      T initialValue, T Function(T previousValue, String element) combine) {
    return super.fold(initialValue, combine);
  }

  @override
  Iterable<String> take(n) => models.take(n);
  @override
  Iterable<String> takeWhile(fn) => models.takeWhile(fn);

  @override
  Iterable<String> where(fn) => models.where(fn);
  @override
  String elementAt(n) => models.elementAt(n);
  @override
  String lastWhere(fn, {Function() orElse}) =>
      models.lastWhere(fn, orElse: orElse);
  @override
  List<String> toList({growable = true}) => models;
  @override
  Iterable<String> skipWhile(fn) => models.skipWhile(fn);
  @override
  Iterable<T> expand<T>(Iterable<T> Function(String element) f) =>
      models.expand(f);
  @override
  String firstWhere(fn, {Function() orElse}) =>
      models.firstWhere(fn, orElse: orElse);
  @override
  String get first => models.first;
}
