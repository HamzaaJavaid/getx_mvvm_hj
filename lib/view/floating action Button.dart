import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm_hj/data/app_exceptions.dart';
import 'package:getx_mvvm_hj/utils/reusable%20Widgets.dart';
import 'package:getx_mvvm_hj/utils/utils.dart';



class FloatingActionButtonScreen extends StatefulWidget {
  const FloatingActionButtonScreen({super.key});

  @override
  State<FloatingActionButtonScreen> createState() => _FloatingActionButtonScreenState();
}

class _FloatingActionButtonScreenState extends State<FloatingActionButtonScreen> {


  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: (){
              Utils.language();
            },
            child: Icon(Icons.language)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

          print(nameController.value);
          Utils.toastMessage('Hey There', Colors.green);
          Utils.snackBar(nameController.text, "Booyah", Colors.blue);
        },
        child: Icon(Icons.add),

      ) ,
      body: SafeArea(
        child: Column(
          children: [
            ReuseableWidget().textField("enter_your_name".tr,nameController)
          ],
        ),
      ),
    );
  }
}
