

import 'package:flutter/cupertino.dart';

class AppExceptions implements Exception{


  final message;
  //final prefix;

  AppExceptions( this.message );

  @override
  String toString() {

    return "$message , ";
  }

}


class InternetException extends AppExceptions{


InternetException(String? message): super(message!);

}

class RequestTimeOutException extends AppExceptions{



  RequestTimeOutException(String? message) : super ( message! );

}



class ServerException extends AppExceptions{

  ServerException([String? message]): super(message! );


}


class CustomException extends AppExceptions{

  CustomException(String? messgage) : super(messgage!);

}