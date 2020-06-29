class ComicModel {
  // ...
  @override
  void noSuchMethod(args) {
    if (args.memberName != Symbol('save')) {
      // NoSuchMethod.withInvocation();
      print('No such method [${args.memberName}]');
    }
    // Do save operations here...
  }
}

class ComicsCollection {}
