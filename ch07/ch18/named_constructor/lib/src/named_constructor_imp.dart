class ComicsCollection {
  List<ComicModel> models = [];
  ComicsCollection() {
    // "Normal" constructor here
  }

  ComicsCollection.fromCollection(List<Map> collection) {
    models = List.from(collection.map((attr) => ComicModel(attr)));
  }
}

class ComicModel {
  var attributes;
  ComicModel(this.attributes);
}
