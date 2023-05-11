import 'package:get/get_connect.dart';

abstract class HttpRepository {
  Future<Response?> login({
    required String email,
    required String password,
    required String lang,
    required String providerStatus,
  });

  Future<Response?> flagApi();
}
