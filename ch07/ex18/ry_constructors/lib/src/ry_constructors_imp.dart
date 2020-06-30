class ComicBook {
  Map attributes;
  ComicBook(attrs) {
    attributes = attrs;
  }
  ComicBook.named(name) {
    attributes = {'title': name};
  }
}
