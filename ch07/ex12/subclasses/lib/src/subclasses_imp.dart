class HipsterModel {}

abstract class HipsterCollection {
  String get url;
  HipsterModel modelMaker(attrs);
}

class Comics extends HipsterCollection {
  @override
  String get url => '/comics';
  @override
  HipsterModel modelMaker(attrs) => ComicBook(attrs);
}

class ComicBook extends HipsterModel {
  var attributes;
  ComicBook(this.attributes);
}
