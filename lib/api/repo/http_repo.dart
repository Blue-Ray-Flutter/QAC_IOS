import 'package:get/get_connect.dart';

abstract class HttpRepository {
  Future<Response?> flagApi();

  Future<Response?> getHomePage();

  Future<void> contactUs({
    required String name,
    required String schoolName,
    required String phoneNumber,
    String? email,
    required String question,
  });
}
