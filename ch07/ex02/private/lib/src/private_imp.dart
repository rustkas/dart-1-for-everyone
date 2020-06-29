class ComicsCollection {}

class ComicsView {
  // Private because it starts with underscore
  ComicsCollection _collection;
  ComicsCollection get collection =>
      // possibly restrict access here...
      _collection;
  set collection(ComicsCollection collection) {
    _collection = collection;
  }
}
