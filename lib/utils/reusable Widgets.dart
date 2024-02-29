import 'package:flutter/material.dart';
import 'package:getx_mvvm_hj/res/assets/fonts.dart';
import 'package:getx_mvvm_hj/utils/utils.dart';



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

  Widget PasswordtextField(String hintText , TextEditingController controller){
    return TextField(
      obscureText: true,
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




  PreferredSizeWidget appBar(String title){
    return AppBar(
      title: Text(
        title ,
        style: TextStyle(
          fontFamily: AppFonts.Monst,
          fontSize: 20
        ),
      ),
    );
  }

  Widget LoginButton(String text , TextEditingController email , TextEditingController password , Function onPressed){
    return MaterialButton(
      onPressed: (){
        onPressed();
      },
    child: Text(text),
      color: Colors.orangeAccent,
    );
  }



}

