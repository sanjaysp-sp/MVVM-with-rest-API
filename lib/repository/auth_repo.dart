// import 'package:mvvm1/data/network/BaseApiService.dart';
// import 'package:mvvm1/data/network/NetworkApiService.dart';
// import 'package:mvvm1/res/app_url.dart';
//
// class AuthRepository{
// BaseApiServices _apiServices=NetworkApiServices();
//
//
// Future<dynamic>loginApi(dynamic data)async{
//   try{
//     dynamic response = await _apiServices.getPostApiResponse(AppUrl.loginEndPoint, data);
//     return response;
//
//   }catch(e){
//     throw e;
//   }
//
// }
//
// Future<dynamic>signupApi(dynamic data)async{
//   try{
//     dynamic response = await _apiServices.getPostApiResponse(AppUrl.registerApiEndPoint, data);
//     return response;
//
//   }catch(e){
//     throw e;
//   }
//
// }
// }
import 'dart:convert';

import 'package:http/http.dart';
import 'package:mvvm1/data/network/NetworkApiService.dart';
import '../data/network/BaseApiService.dart';
import '../res/app_url.dart';

class AuthRepository  {

  BaseApiServices _apiServices=NetworkApiService();


  Future<dynamic> loginApi(dynamic data )async{

    try{

      dynamic response = await _apiServices.getPostApiResponse(AppUrl.loginEndPint, data);
      return response ;

    }catch(e){
      throw e ;
    }
  }

  Future<dynamic> signUpApi(dynamic data )async{

    try{

      dynamic response = await _apiServices.getPostApiResponse(AppUrl.registerApiEndPoint, data);
      return response ;


    }catch(e){
      throw e ;
    }
  }

}