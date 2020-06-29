import 'dart:convert';
import 'dart:html';

void main() {
  final list_el = document.getElementById('#comics-list');
  final req = HttpRequest();
  req.open('get', '/comics');
  req.onLoad.listen((req) {
    final list = jsonDecode(req.toString()) as List<String>;
    list_el.innerHtml = graphic_novels_template(list);
    attach_delete_handlers(list_el);
  });
  req.send();
}

String graphic_novels_template(List<String> list) {
  final sb = StringBuffer();
  list.forEach((graphic_novel) {
    sb.write(graphic_novel_template(graphic_novel));
  });
  return sb.toString();
}

String graphic_novel_template(graphic_novel) {
  return '''
<li id="${graphic_novel['id']}">
${graphic_novel['title']}
<a href="#" class="delete">[delete]</a>
</li>''';
}

void attach_delete_handlers(Element parent) {
  parent.querySelectorAll('.delete').forEach((el) {
    el.onClick.listen((MouseEvent event) {
      final target = (event.target as Element);
      delete(target.parent.id, callback: () {
        print('[delete] ${target.parent.id}');
        target.parent.remove();
      });
      event.preventDefault();
    });
  });
}

void delete(id, {callback}) {
  var req = HttpRequest(), default_callback = () {};

  req.onLoad.listen((res) {
    (callback ?? default_callback)();
  });

  req.open('delete', '/comics/$id', async: true);
  req.send();
}
//webdev serve
