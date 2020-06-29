class Element {
  var innerHtml;
}

String template(obj) => 'foo';

var el = Element();
var collection = {};

class ComicsView {
  
  void render() {
    el.innerHtml = template(collection);
  }
}

class ComicsCollection {}
