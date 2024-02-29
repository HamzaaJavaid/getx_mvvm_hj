import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_mvvm_hj/res/Routes/routes%20name.dart';
import 'package:getx_mvvm_hj/res/assets/fonts.dart';
import 'package:getx_mvvm_hj/utils/reusable%20Widgets.dart';
import 'package:hive/hive.dart';

class loginSuccess extends StatelessWidget {
  const loginSuccess({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text('Login Succesfully' , style: TextStyle(
                fontFamily: AppFonts.Monst,
                fontSize: 30
              ),),
            ),
            MaterialButton(
              color: Colors.red,
              onPressed: ()async{
                var box = await Hive.openBox("login_confirmation");
                box.delete("email");
                box.delete("password");
                Get.toNamed(RouteName.loginView);
                box.get("email");
                box.get("password");
              },
            child: Text('Delete Data'),
            ),
          ],
        ),
      ),
    );
  }
}
