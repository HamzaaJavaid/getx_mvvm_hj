import 'package:flutter/material.dart';
import 'package:getx_mvvm_hj/data/app_exceptions.dart';
import 'package:getx_mvvm_hj/utils/utils.dart';



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

          Utils.toastMessage('Hey There', Colors.green);
          Utils.snackBar("This is Hamza", "Booyah", Colors.blue);
        },
        child: Icon(Icons.add),

      )
    );
  }
}
