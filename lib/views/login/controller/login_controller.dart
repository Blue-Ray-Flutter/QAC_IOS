import 'package:adobe/views/login/model/login_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../api/repo/http_repo.dart';
import '../../../shared/components/constants/style/color.dart';
import '../../../shared/helper/cache_utils.dart';
class LoginController extends GetxController{

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
final HttpRepository httpRepository;
final CacheUtils cacheUtils;

  LoginController({required this.httpRepository, required this.cacheUtils});
  Rx<LoginModel?> loginModel = Rx<LoginModel?>(null);
  Rx<IconData> ico = Icons.visibility_outlined.obs;
  RxBool obscureText = true.obs;


  void toggleObscureText() {
      if(obscureText.value){
        obscureText.value = false;
          ico.value = Icons.visibility_off_outlined;
          return;
        }else{
        obscureText.value = true;
          ico.value = Icons.visibility_outlined;
          return;
        }
  }



  // hidePassFun(){
  //   //   if(hidePass.value){
  //   //     hidePass.value = false;
  //   //     ico.value = Icons.visibility_off_outlined;
  //   //     return;
  //   //   }else{
  //   //     hidePass.value = true;
  //   //     ico.value = Icons.visibility_outlined;
  //   //     return;
  //   //   }
  //   // }

  Future<void>logIn()async{

    try{
      late Rx<Response?> loginResponse = Rx<Response?>(null);
      loginResponse.value = await httpRepository.login(
        email: emailController.value.text,
        password: passwordController.value.text,
        lang: 'en',
        providerStatus: '2',
      );
      if(loginResponse.value==null){
        return;
      }
      loginModel.value = LoginModel.fromJson(loginResponse.value!.body);
      await cacheUtils.login( token: loginModel.value!.token!,
        email: loginModel.value!.userData!.email!,

      );
    }

    catch(e){
      print(e.toString());
    }
  }
}