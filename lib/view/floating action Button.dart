import 'package:flutter/material.dart';
import 'package:getx_mvvm_hj/data/app_exceptions.dart';



class FloatingActionButtonScreen extends StatefulWidget {
  const FloatingActionButtonScreen({super.key});

  @override
  State<FloatingActionButtonScreen> createState() => _FloatingActionButtonScreenState();
}

class _FloatingActionButtonScreenState extends State<FloatingActionButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          throw InternetException("hAMZA");
        },
        child: Icon(Icons.add),

      )
    );
  }
}
