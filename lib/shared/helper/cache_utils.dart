import 'package:get_storage/get_storage.dart';


 class CacheUtils {
  final GetStorage _storage;

   CacheUtils(this._storage);
  static const _nameKey = 'name';
  static const _userNameKey = 'userName';
  static const _emailKey = 'email';
  static const _phoneKey = 'phone';
   static const _tokenKey= 'token';
   static const _providerStatusKey= 'providerStatus';



bool isUserLoggedIn() {
  return _storage.hasData(_tokenKey);
}
String? getToken() {
  return _storage.read(_tokenKey);
}
String? getName() {
  return _storage.read(_nameKey);
}
String? getEmail() {
  return _storage.read(_emailKey);
}
String? getPhone() {
  return _storage.read(_phoneKey);
}
String? getUserName() {
  return _storage.read(_userNameKey);
}

Future<void> register(
{
  required String name,
  required String token,
  required String email,
  required String phone,
  required String userName,

}
)async {
  _storage.write(_nameKey, name);
  _storage.write(_tokenKey, token);
  _storage.write(_emailKey, email);
  _storage.write(_phoneKey, phone);
  _storage.write(_userNameKey, userName);

}

Future<void> logIn({
  required String email,
  required String token,



}
)async
{
  _storage.write(_emailKey, email);
  _storage.write(_tokenKey, token);



}

}
