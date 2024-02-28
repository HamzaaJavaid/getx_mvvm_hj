import 'package:flutter/material.dart';
import 'package:getx_mvvm_hj/res/assets/fonts.dart';



class ReuseableWidget{



  Widget textField(String hintText , TextEditingController controller){
    return TextField(
      style: TextStyle(
        fontFamily: AppFonts.Monst,
        color: Colors.green
      ),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontFamily: AppFonts.Monst,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        contentPadding: EdgeInsets.all(20),

      ),
    );
  }



}

