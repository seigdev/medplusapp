import 'package:shared_preferences/shared_preferences.dart';

class AppPreferences {
  static SharedPreferences? _preferences;

  static const _keyLoggedIn = 'loggedin';
  static const _keyActivated = 'activated';
  static const _userEmail = 'useremail';
  static const _bearerToken = 'token';
  static const _walletStatus = 'status';
  static const _userCode = 'userotp';
  static const _userStatus = 'userotp';
  static const _countryId = 'countryId';

// initialize sharedPreference.
  Future init() async => _preferences = await SharedPreferences.getInstance();

  Future setLoginData(bool login) async =>
      await _preferences?.setBool(_keyLoggedIn, login);

  bool? getLoginData() => _preferences?.getBool(_keyLoggedIn);

  Future setBearerToken(String token) async =>
      await _preferences?.setString(_bearerToken, token);

  String? getBearerToken() => _preferences?.getString(_bearerToken);

  Future setWalletStatus(String status) async =>
      await _preferences?.setString(_walletStatus, status);

  String? getWalletStatus() => _preferences?.getString(_walletStatus);

  Future setUserEmail(String email) async =>
      await _preferences?.setString(_userEmail, email);

  String? getUserEmail() => _preferences?.getString(_userEmail);

  Future setCode(String code) async =>
      await _preferences?.setString(_userCode, code);

  String? getCode() => _preferences?.getString(_userCode);

  Future setUserStatus(String status) async =>
      await _preferences?.setString(_userStatus, status);

  String? getUserStatus() => _preferences?.getString(_userStatus);

  Future setCountryIndex(int i) async =>
      await _preferences?.setInt(_countryId, i);

  int? getCountryIndex() => _preferences?.getInt(_countryId);

  Future setWalletActivated(bool activated) async =>
      await _preferences?.setBool(_keyActivated, activated);

  bool? getWalletActivated() => _preferences?.getBool(_keyActivated);
}
