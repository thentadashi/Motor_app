import 'package:shared_preferences/shared_preferences.dart';

class SessionManager {
  static final SessionManager _singleton = SessionManager._internal();

  factory SessionManager() {
    return _singleton;
  }

  SessionManager._internal();

  static const _keyLoggedIn = 'is_logged_in';
  static const _keyUserId = 'user_id';

  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> setLoggedIn(bool loggedIn) async {
    final SharedPreferences prefs = await _prefs;
    await prefs.setBool(_keyLoggedIn, loggedIn);
  }

  Future<bool> isLoggedIn() async {
    final SharedPreferences prefs = await _prefs;
    return prefs.getBool(_keyLoggedIn) ?? false;
  }

  Future<void> setUserId(String userId) async {
    final SharedPreferences prefs = await _prefs;
    await prefs.setString(_keyUserId, userId);
  }

  Future<String?> getUserId() async {
    final SharedPreferences prefs = await _prefs;
    return prefs.getString(_keyUserId);
  }

  Future<void> clearSession() async {
    final SharedPreferences prefs = await _prefs;
    await prefs.remove(_keyLoggedIn);
    await prefs.remove(_keyUserId);
  }
}
