import 'package:flutter/material.dart';
import 'package:getx_mvvm_hj/view/floating%20action%20Button.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3 ,) , (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>FloatingActionButtonScreen()));
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Text('SPLASH SCREEN'),
      ),
    );
  }
}
