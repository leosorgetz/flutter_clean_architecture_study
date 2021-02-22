import 'package:estudo_app/src/domain/utils/app_storage_client/app_storage_client_interface.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Singleton(as: IAppStorageClient)
class AppStorageClient implements IAppStorageClient {
  final SharedPreferences _sharedPreferences;

  AppStorageClient(this._sharedPreferences);

  @override
  String getString(String key) {
    return _sharedPreferences.get(key);
  }

  @override
  Future<bool> setString(String key, String value) async {
    return _sharedPreferences.setString(key, value);
  }

  @override
  bool getBool(String key) {
    return _sharedPreferences.getBool(key);
  }

  @override
  Future<bool> setBool(String key, bool value) async {
    return _sharedPreferences.setBool(key, value);
  }

  @override
  int getInt(String key) {
    return _sharedPreferences.getInt(key);
  }

  @override
  Future<bool> setInt(String key, int value) async {
    return _sharedPreferences.setInt(key, value);
  }

  @override
  double getDouble(String key) {
    return _sharedPreferences.getDouble(key);
  }

  @override
  Future<bool> setDouble(String key, double value) async {
    return _sharedPreferences.setDouble(key, value);
  }
}
