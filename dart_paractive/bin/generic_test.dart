// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class Cache<T extends num> {
  final T _obj;
  Cache(this._obj);
  T get value => _obj;
  void handle();
}

class LocalCache<T extends num> extends Cache<T> {
  LocalCache(T obj) : super(obj);
  @override
  void handle() {
    print('In LocalCache Class');
  }

  // ignore: avoid_shadowing_type_parameters
  T printValue<T>(T val) {
    return val;
  }
}

class CloudCache<T extends num, K> extends Cache<T> {
  CloudCache(T obj, K obj2) : super(obj);
  @override
  void handle() {
    print('In CloudCache class');
  }
}
