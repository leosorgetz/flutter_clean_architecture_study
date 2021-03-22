abstract class IAppStorageClient {
  String? getString(String key);

  Future<bool> setString(String key, String value);

  bool? getBool(String key);

  Future<bool> setBool(String key, bool value);

  int? getInt(String key);

  Future<bool> setInt(String key, int value);

  double? getDouble(String key);

  Future<bool> setDouble(String key, double value);
}
