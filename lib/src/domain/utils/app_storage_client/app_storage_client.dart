import 'package:estudo_app/src/domain/utils/app_storage_client/app_storage_client_interface.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Singleton(as: IAppStorageClient)
class AppStorageClient implements IAppStorageClient {
  SharedPreferences _sharedPreferences;

  AppStorageClient();

  @override
  Future<String> getString(String key) async {
    _sharedPreferences = await _getInstance();
    return _sharedPreferences.get(key);
  }

  @override
  Future<bool> setString(String key, String value) async {
    _sharedPreferences = await _getInstance();
    return _sharedPreferences.setString(key, value);
  }

  @override
  Future<bool> getBool(String key) async {
    _sharedPreferences = await _getInstance();
    return _sharedPreferences.getBool(key);
  }

  @override
  Future<bool> setBool(String key, bool value) async {
    _sharedPreferences = await _getInstance();
    return _sharedPreferences.setBool(key, value);
  }

  @override
  Future<int> getInt(String key) async {
    _sharedPreferences = await _getInstance();
    return _sharedPreferences.getInt(key);
  }

  @override
  Future<bool> setInt(String key, int value) async {
    _sharedPreferences = await _getInstance();
    return _sharedPreferences.setInt(key, value);
  }

  @override
  Future<double> getDouble(String key) async {
    _sharedPreferences = await _getInstance();
    return _sharedPreferences.getDouble(key);
  }

  @override
  Future<bool> setDouble(String key, double value) async {
    _sharedPreferences = await _getInstance();
    return _sharedPreferences.setDouble(key, value);
  }

  Future<SharedPreferences> _getInstance() async => _sharedPreferences = await SharedPreferences.getInstance();
}
