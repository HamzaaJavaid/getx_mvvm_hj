import 'package:flutter/material.dart';



class ReuseableWidget{



  Widget textField(String hintText , TextEditingController controller){
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        contentPadding: EdgeInsets.all(20),

      ),
    );
  }



}

