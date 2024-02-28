

import 'package:get/route_manager.dart';
import 'package:getx_mvvm_hj/res/Routes/routes%20name.dart';
import 'package:getx_mvvm_hj/view/SplashScreen.dart';
import 'package:getx_mvvm_hj/view/floating%20action%20Button.dart';

class Routes{




  static appRoutes ()=>[
    GetPage(name: RouteName.SplashScreen, page:()=> SplashScreen()),
    GetPage(name: RouteName.floatingActionButtonScreen, page:()=> FloatingActionButtonScreen()),
  ];
}