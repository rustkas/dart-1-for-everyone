class ComicsView {
  ComicsCollection collection;
  ComicModel model;
  Element el;

  ComicsView({this.el, this.model, this.collection}) {
    el ??= DivElement();
  }
}

class ComicsCollection {}
class ComicModel {}
class Element {}
class DivElement extends Element {}

class ModelEvents {}
