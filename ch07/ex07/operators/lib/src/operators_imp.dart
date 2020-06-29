class ComicModel<T> {
  Map<String,T> attributes;
  T operator [](attr) => attributes[attr];
}

class OperatorHell {
  @override
  bool operator ==(v) => true;
  bool operator <(v) => true;
  bool operator >(v) => true;
  bool operator <=(v) => true;
  bool operator >=(v) => true;
  bool operator -(v) => true;
  bool operator +(v) => true;
  bool operator /(v) => true;
  bool operator ~/(v) => true;
  bool operator *(v) => true;
  bool operator %(v) => true;
  bool operator |(v) => true;
  bool operator ^(v) => true;
  bool operator &(v) => true;
  bool operator <<(v) => true;
  bool operator >>(v) => true;
  void operator []=(k, v) {}
  bool operator [](v) => true;
  bool operator ~() => true;
}
