import 'package:get_storage/get_storage.dart';

class SLocalStorage {
  static final SLocalStorage _instance = SLocalStorage._internal();

  factory SLocalStorage() {
    return _instance;
  }

  SLocalStorage._internal();

  final _storage = GetStorage();

  //method to save data
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  //read data

  T? readData<T>(String key) {
    return _storage.read(key);
  }

  //method to remove data
  Future<void> removeData<T>(String key) async {
    await _storage.remove(key);
  }

  //method to clear data
  Future<void> clearAll() async {
    await _storage.erase();
  }
}
