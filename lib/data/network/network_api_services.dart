

import 'dart:async';
import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

import 'package:getx_mvvm_hj/data/app_exceptions.dart';
import 'package:http/http.dart' as http;
import 'package:getx_mvvm_hj/data/network/base_api_services.dart';

class NetworkApiServices extends BaseApiServices{





  returnJsonDecode(http.Response response){
    switch(response.statusCode){
      case 200 : dynamic responseDecode = jsonDecode(response.body);
      default : throw CustomException("Some UnIdentified Error");
    }
  }

  @override
  Future getDataFromApi(String url) async{


    final data ;

    try{
      final response  = await  http.get(Uri.parse(url));
      data = returnJsonDecode(response);
    }on SocketException{
      throw InternetException('Check Internet .....');
    }on TimeoutException{
      throw RequestTimeOutException("Connection is weak....");
    }


    return data;


  }


  @override
  Future postDataFromApi(var body , String url)async{

    final data;
   try{
     final response = await http.post(Uri.parse(url) , body: body);
     data = returnJsonDecode(response);
   }on SocketException{
     throw InternetException("No Internet ...");
   }on TimeoutException{
     throw RequestTimeOutException("Took Too long to Respond");
   }

   return data;


  }




}