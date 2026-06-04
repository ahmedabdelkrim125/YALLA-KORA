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
  static const _userAgeKey = 'user_age';
  static const _userFieldNameKey = 'user_field_name';
  static const _userGovernorateKey = 'user_governorate';
  static const _userMatchNotificationsKey = 'user_match_notifications';
  static const _userMatchesPlayedKey = 'user_matches_played';
  static const _userWalletBalanceKey = 'user_wallet_balance';

  // Token
  static Future<void> saveAuthToken(String token) => _storage.write(key: _tokenKey, value: token);
  static Future<String?> getAuthToken() => _storage.read(key: _tokenKey);
  static Future<void> deleteAuthToken() => _storage.delete(key: _tokenKey);

  // User Info
  static Future<void> saveUserInfo({
    required String id,
    required String name,
    required String phone,
    required String role,
    int? age,
    String? fieldName,
    required String governorate,
    required bool matchNotifications,
    required int matchesPlayed,
    required int walletBalance,
  }) async {
      await Future.wait([
        _storage.write(key: _userIdKey, value: id),
        _storage.write(key: _userNameKey, value: name),
        _storage.write(key: _userPhoneKey, value: phone),
        _storage.write(key: _userRoleKey, value: role),
        _storage.write(key: _userAgeKey, value: age.toString()),
        _storage.write(key: _userFieldNameKey, value: fieldName),
        _storage.write(key: _userGovernorateKey, value: governorate),
        _storage.write(key: _userMatchNotificationsKey, value: matchNotifications.toString()),
        _storage.write(key: _userMatchesPlayedKey, value: matchesPlayed.toString()),
        _storage.write(key: _userWalletBalanceKey, value: walletBalance.toString()),
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
  static Future<String?> getUserWalletBalance() => _storage.read(key: _userWalletBalanceKey);

  // Clear all on logout
  static Future<void> clearAll() => _storage.deleteAll();
}