import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';


class Utils{




  static void toastMessage(String message , Color color){
    Fluttertoast.showToast(msg: message , backgroundColor: color);
  }

  static void snackBar (String title , String message , Color backgroundColor){
    Get.snackbar(title, message,backgroundColor: backgroundColor);
  }


  static void language(){
    Get.bottomSheet(
      Container(
        color: Colors.white,
        child: Column(
          children: [
            InkWell(
              onTap: (){
                Get.updateLocale(Locale("en" , "US"));
              },
              child: ListTile(
                title: Text('English'),
              ),
            ) ,
            SizedBox(height: 10,) ,
            InkWell(
              onTap: (){
                Get.updateLocale(Locale("ur" , "PK"));
              },
              child: ListTile(
                title: Text('Urdu'),
              ),
            ) ,
          ],
        ),
      )
    );
  }






}



class ControllersInApp{


  TextEditingController nameController  = TextEditingController();


}