library hipster_collection;

import 'dart:html';
import 'dart:async';
import 'dart:collection';
import 'dart:convert';

import 'hipster_model.dart';

class HipsterCollection extends IterableBase {
  final StreamController _onLoad = StreamController.broadcast(),
      _onAdd = StreamController.broadcast();
  List models = [];

  HipsterModel modelMaker(attrs) {
    return HipsterModel(models);
  }

  String get url {
    return '';
  }

  // Be List-like
  @override
  Iterator get iterator => models.iterator;

  // Be Backbone like
  Stream get onLoad => _onLoad.stream;
  Stream get onAdd => _onAdd.stream;

  dynamic operator [](id) =>
      firstWhere((model) => model['id'] == id, orElse: () => null);

  void fetch() {
    var req = HttpRequest();

    req.onLoad.listen(_handleOnLoad);
    req.open('get', url);
    req.send();
  }

  void create(attrs) {
    var new_model = modelMaker(attrs);
    new_model.save(callback: (event) {
      add(new_model);
    });
  }

  void add(model) {
    models.add(model);
    _onAdd.add(model);
  }

  void _handleOnLoad(event) {
    var request = event.target, list = jsonDecode(request.responseText);

    list.forEach((attrs) {
      models.add(modelMaker(attrs));
    });

    _onLoad.add(this);
  }
}
