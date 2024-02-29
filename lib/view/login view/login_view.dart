import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm_hj/res/Routes/routes%20name.dart';
import 'package:getx_mvvm_hj/utils/reusable%20Widgets.dart';
import 'package:getx_mvvm_hj/view/SplashScreen.dart';
import 'package:getx_mvvm_hj/view/login%20view/loginview_controller.dart';
import 'package:getx_mvvm_hj/view_model/services/splash_services/splash%20services.dart';
import 'package:hive/hive.dart';
import '../../utils/utils.dart';




class loginView extends StatefulWidget {
  const loginView({super.key});

  @override
  State<loginView> createState() => _loginViewState();
}

class _loginViewState extends State<loginView> {


  loginView_Controller loginController = Get.put(loginView_Controller());
  SplashServices splashServices = SplashServices();



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashServices.isLogin();
  }

  @override
  Widget build(BuildContext context) {
    print('Hulala');
    return Scaffold(
      appBar: ReuseableWidget().appBar("Login Screen"),
      body: SafeArea(
        child: Column(
          children: [
           Obx(() =>  ReuseableWidget().textField("enter_email".tr, loginController.emailController.value)),
            SizedBox(height: 30,),
            Obx(() =>  ReuseableWidget().PasswordtextField("enter_password".tr, loginController.passwordController.value)),
          ReuseableWidget().LoginButton("Login" , loginController.emailController.value ,loginController.passwordController.value , ()async{
            print(loginController.emailController.value.toString());
            print(loginController.passwordController.value.toString());
            Utils.snackBar(loginController.emailController.value.text.toString(), loginController.passwordController.value.text.toString(), Colors.blueGrey);

            print('start');
            var box = await Hive.openBox("login_confirmation");
            box.put("email", loginController.emailController.value.text.toString());
            box.put("password", loginController.passwordController.value.text.toString());
            print('done');
            Get.toNamed(RouteName.loginSuccess);

          }),
          ],
        ),
      ),
    );
  }
}
