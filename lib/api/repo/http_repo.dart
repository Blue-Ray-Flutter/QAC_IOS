import 'package:get/get_connect.dart';

abstract class HttpRepository {
  Future<Response?> flagApi();
  Future<void> contactUs({
    required String name,
    required String schoolName,
    required String phoneNumber,
    required String email,
    required String question,
  });
}
