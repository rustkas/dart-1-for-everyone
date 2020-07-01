import 'dart:html';
import 'dart:async';
import 'dart:convert';

class HipsterModel {
  // ...
  var attributes;
  StreamController<HipsterModel> _onSave, _onDelete;
  Stream<HipsterModel> get onSave =>
      Stream.castFrom<dynamic, HipsterModel>(_onSave.stream);
  Stream<HipsterModel> get onDelete =>
      Stream.castFrom<dynamic, HipsterModel>(_onDelete.stream);

  HipsterModel(this.attributes);

  dynamic operator [](attr) => attributes[attr];

  String get urlRoot => '';

  void delete({callback}) {
    var req = HttpRequest();

    req.onLoad.listen((event) {
      print('[delete] success');
      _onDelete.add(this);
      if (callback != null) {
        callback(event);
      }
    });

    req.open('delete', "${urlRoot}/${attributes['id']}");
    req.send();
  }

  void save({callback}) {
    var req = HttpRequest();

    req.onLoad.listen((event) {
      attributes = jsonDecode(req.responseText);
      _onSave.add(this);
      if (callback != null) {
        callback(this);
      }
    });

    req.open('post', urlRoot);
    req.setRequestHeader('Content-type', 'application/json');
    req.send(json);
  }

  String get json => jsonEncode(attributes);
}
