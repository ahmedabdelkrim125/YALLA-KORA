import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageService {
  static const _storage = FlutterSecureStorage(
    aOptions: AndroidOptions(
      encryptedSharedPreferences: true,
    ),
  );

  // Keys
  static const _tokenKey = 'auth_token';
  static const _userIdKey = 'user_id';
  static const _userNameKey = 'user_name';
  static const _userPhoneKey = 'user_phone';
  static const _userRoleKey = 'user_role';

  // Token
  static Future<void> saveAuthToken(String token) => _storage.write(key: _tokenKey, value: token);
  static Future<String?> getAuthToken() => _storage.read(key: _tokenKey);
  static Future<void> deleteAuthToken() => _storage.delete(key: _tokenKey);

  // User Info
  static Future<void> saveUserInfo({required String id, required String name, required String phone, required String role}) async {
    await Future.wait([
      _storage.write(key: _userIdKey, value: id),
      _storage.write(key: _userNameKey, value: name),
      _storage.write(key: _userPhoneKey, value: phone),
      _storage.write(key: _userRoleKey, value: role),
    ]);
  }

  static Future<Map<String, String?>> getUserData() async {
    return {
      'id': await _storage.read(key: _userIdKey),
      'name': await _storage.read(key: _userNameKey),
      'phone': await _storage.read(key: _userPhoneKey),
      'role': await _storage.read(key: _userRoleKey),
    };
  }

  static Future<String?> getUserName() => _storage.read(key: _userNameKey);

  // Clear all on logout
  static Future<void> clearAll() => _storage.deleteAll();
}