import 'package:get/get_connect.dart';

abstract class HttpRepository {
  Future<Response?> flagApi();

  Future<Response?> flagApi1();

  Future<Response?> getHomePage();

  Future<void> contactUs({
    required String name,
    required String schoolName,
    required String phoneNumber,
    String? email,
    required String question,
  });

  Future<Response?> getNews({
    String? lang,
  });

  Future<Response?> getAudio({
    String? lang,
  });

  Future<Response?> getVideo({
    String? lang,
  });
  Future<Response?> getNewsArticle({
    String? lang,
    required String nid,
  });

  Future<Response?> getMedia({String? lang});
}
