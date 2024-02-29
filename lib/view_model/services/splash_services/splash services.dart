//to check either user is login or not......



import 'dart:async';

import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:getx_mvvm_hj/res/Routes/routes%20name.dart';
import 'package:getx_mvvm_hj/view/login%20view/loginview_controller.dart';
import 'package:hive/hive.dart';

class SplashServices{



  Future isLogin()async{




    loginView_Controller loginViewController = Get.put(loginView_Controller());


    var box = await Hive.openBox("login_confirmation");
    print('Here is splash services');
    print(box.get("email"));
    print(box.get('password'));
    print('Splash SERVICES ENDS');
    loginViewController.emailController.value.text = box.get("email") ==null ? "" :box.get("email") ;
    loginViewController.passwordController.value.text = box.get("password")==null ? "" : box.get("password");

  }




}