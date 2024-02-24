

import 'package:flutter/cupertino.dart';

class AppExceptions implements Exception{


  final message;
  final prefix;

  AppExceptions( this.message ,  this.prefix);

  @override
  String toString() {

    return "$message , $prefix";
  }

}


class InternetException extends AppExceptions{


InternetException(String? message): super(message! , "No Internet Available ...");

}

class RequestTimeOutException extends AppExceptions{



  RequestTimeOutException(String? message) : super ( message! ,"Request Time Out ...");

}



class ServerException extends AppExceptions{

  ServerException([String? message]): super(message! , "Inetrnal Server Error ... ");


}