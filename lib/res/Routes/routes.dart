

import 'package:get/route_manager.dart';
import 'package:getx_mvvm_hj/res/Routes/routes%20name.dart';
import 'package:getx_mvvm_hj/view/SplashScreen.dart';
import 'package:getx_mvvm_hj/view/floating%20action%20Button.dart';
import 'package:getx_mvvm_hj/view/login%20view/login_view.dart';

import '../../view/login view/login_success_view/login_success.dart';

class Routes{




  static appRoutes ()=>[
    GetPage(name: RouteName.SplashScreen, page:()=> SplashScreen()),
    GetPage(name: RouteName.floatingActionButtonScreen, page:()=> FloatingActionButtonScreen()),
    GetPage(name: RouteName.loginView, page:()=> loginView()),
    GetPage(name: RouteName.loginSuccess, page: ()=>loginSuccess()),

  ];
}