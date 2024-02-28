import 'dart:ui';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';


class Utils{



  static void toastMessage(String message , Color color){
    Fluttertoast.showToast(msg: message , backgroundColor: color);
  }

  static void snackBar (String title , String message , Color backgroundColor){
    Get.snackbar(title, message,backgroundColor: backgroundColor);
  }



}