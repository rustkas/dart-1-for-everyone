class ComicBook {
  Map attributes;
  ComicBook(attrs) {
    attributes = attrs;
  }
  // Redirect from the `named` constructor to the all-purpose constructor
  ComicBook.named(name): this({'title': name});
}


