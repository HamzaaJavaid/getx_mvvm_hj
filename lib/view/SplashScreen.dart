import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:get/route_manager.dart';
import 'package:getx_mvvm_hj/res/Routes/routes%20name.dart';
import 'package:getx_mvvm_hj/view/floating%20action%20Button.dart';
import 'package:getx_mvvm_hj/view_model/services/splash_services/splash%20services.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  SplashServices splashServices =SplashServices();

  @override
  void initState() {

    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2) , (){
      Get.toNamed(RouteName.loginView);
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Text('SPLASH SCREEN'),
      ),
    );
  }
}
