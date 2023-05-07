import 'package:adobe/api/api_url/api_url.dart';
import 'package:adobe/api/repo/http_repo.dart';
import 'package:adobe/views/main_page/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../shared/components/constants/style/color.dart';
class HttpRepositroyImpl extends GetConnect implements HttpRepository{
  @override
 void onInit(){
    httpClient.timeout= const Duration(seconds: 30);
    super.onInit();
  }
  @override
  Future<Response?> login({
    required String email,
    required String password,
    required String lang,
    required String providerStatus,
})async{

final fromData = FormData({
  'email':email,
  'password':password,
  'lang':lang,
  'provider_status':providerStatus,
});
var response= await post(UrlApi.loginUrl,fromData);
if(response.isOk){
  Get.to(()=> MainPage());
  return response;


}else if(
response.status.hasError ){
  Get.snackbar(
    'Login',
    response.body['msg'],
    icon: const Icon(
      Icons.warning,
      color: Colors.white,
    ),
    snackPosition: SnackPosition.TOP,
    backgroundColor: AppColor.red,
    borderRadius: 15,
    margin: const EdgeInsets.all(15),
    colorText: Colors.white,
    duration: const Duration(seconds: 2),
    isDismissible: true,
    dismissDirection: DismissDirection.horizontal,
    forwardAnimationCurve: Curves.easeInBack,
  );
}

    return null;
  }


}
