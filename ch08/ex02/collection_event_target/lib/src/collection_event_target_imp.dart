import 'dart:async';
import 'dart:collection';

class ComicsView {
  ComicsView() {
    _subscribeEvents();
  }
  // called by the constructor
  void _subscribeEvents() {
    if (collection == null) return;
    collection.onLoad.listen((event) => render());
    collection.onAdd.listen((event) => render());
  }

  var collection;

  void render() {
    // render the list to the page
  }
}

class ComicModel {}

class ComicsCollection extends IterableBase {
  // ...
  final StreamController _onLoad = StreamController.broadcast(),
      _onAdd = StreamController.broadcast();
  List models = [];
  // ...

  // Be List-like
  @override
  Iterator get iterator => models.iterator;

  // Be Backbone like
  Stream<ComicModel> get onLoad =>
      Stream.castFrom<dynamic, ComicModel>(_onLoad.stream);
  Stream<ComicModel> get onAdd =>
      Stream.castFrom<dynamic, ComicModel>(_onAdd.stream);

  void add(model) {
    models.add(model);
    _onAdd.add(model);
  }
}
