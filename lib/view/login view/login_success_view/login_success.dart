import 'package:flutter/material.dart';
import 'package:getx_mvvm_hj/res/assets/fonts.dart';

class loginSuccess extends StatelessWidget {
  const loginSuccess({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Login Succesfully' , style: TextStyle(
          fontFamily: AppFonts.Monst,
          fontSize: 30
        ),),
      ),
    );
  }
}
