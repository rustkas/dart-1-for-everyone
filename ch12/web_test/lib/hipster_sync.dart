import 'dart:html';
import 'dart:convert';

class HipsterSync {
  // private class variable to hold an application injected sync behavior
  static var _injected_sync;

  // setter for the injected sync behavior
  static set sync(fn) {
    _injected_sync = fn;
  }

  // delete the injected sync behavior
  static void useDefaultSync() {
    _injected_sync = null;
  }

  // static method for HipsterModel and HipsterCollection to invoke -- will
  // forward the call to the appropriate behavior (injected or default)
  static void call(method, model, {options}) {
    if (_injected_sync == null) {
      return _defaultSync(method, model, options: options);
    } else {
      return _injected_sync(method, model, options: options);
    }
  }

  // default sync behavior
  static void _defaultSync(method, model, {options}) {
    var req = HttpRequest();

    _attachCallbacks(req, options);

    req.open(method, model.url, async: true);

    // POST and PUT HTTP request bodies if necessary
    if (method == 'post' || method == 'put') {
      req.setRequestHeader('Content-type', 'application/json');
      req.send(jsonEncode(model.attributes));
    } else {
      req.send();
    }
  }

  static void _attachCallbacks(request, options) {
    if (options == null) return;

    if (options.containsKey('onLoad')) {
      request.onLoad.listen((event) {
        var req = event.target, json = jsonDecode(req.responseText);

        options['onLoad'](json);
      });
    }
  }
}
