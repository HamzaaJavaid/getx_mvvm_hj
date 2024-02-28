import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_mvvm_hj/res/Routes/routes%20name.dart';
import 'package:getx_mvvm_hj/res/Routes/routes.dart';
import 'package:getx_mvvm_hj/view/SplashScreen.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashScreen(),
      getPages: Routes.appRoutes(),
    );
  }
}
