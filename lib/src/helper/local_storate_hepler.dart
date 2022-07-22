import 'package:shared_preferences/shared_preferences.dart';

Future<SharedPreferences> _initSharedPreferences() async =>
    await SharedPreferences.getInstance();

class SessionStorage {
  void setSession(String sessionvalue) async {
    SharedPreferences prefs = await _initSharedPreferences();
    prefs.setString('session', sessionvalue);
  }

  Future<String> getSession() async {
    SharedPreferences prefs = await _initSharedPreferences();
    String? sessionString = prefs.getString('session');
    return sessionString ?? "";
  }

  void clearSession() async {
    SharedPreferences prefs = await _initSharedPreferences();
    prefs.remove("session");
  }
}
