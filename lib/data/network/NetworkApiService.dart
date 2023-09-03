// import 'dart:convert';
// import 'dart:io';
//
// import 'package:http/http.dart%20';
// import 'package:mvvm1/data/app_exceptions.dart';
// import 'package:mvvm1/data/network/BaseApiService.dart';
// import 'package:http/http.dart' as http;
//
// class NetworkApiServices extends BaseApiServices{
//   @override
//   Future getGetApiResponse(String url) async {
//     dynamic responseJson;
//     try{
//       final response =await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));
//       responseJson=retuenResponse(response);
//
//     }on SocketException{
//       throw FetchDataException("no internet connection");
//
//
//     }
//     return responseJson;
//
//   }
//
//   @override
//   Future getPostApiResponse(String url,dynamic data) async {
//     dynamic responseJson;
//     try{
//       Response response=await post(
//         Uri.parse(url),
//         body:data
//       ).timeout(Duration(seconds: 10));
//       responseJson=retuenResponse(response);
//
//     }on SocketException{
//       throw FetchDataException("no internet connection");
//
//
//     }
//     return responseJson;
//   }
//
//   }
//   dynamic retuenResponse(http.Response response){
//     switch(response.statusCode){
//     case 200:
//         dynamic responseJson=jsonDecode(response.body);
//     return responseJson;
//       case 400:
//         throw BadRequestException(response.body.toString());
//       case 404:
//         throw UnAuthourizedException(response.body.toString());
//     default:
//       throw FetchDataException('Error occured while communicating with '
//           'server with status code'+response.statusCode.toString());
//
//   }
//
// }
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart';

import 'package:http/http.dart' as http;

import '../app_exceptions.dart';
import 'BaseApiService.dart';

class NetworkApiService extends BaseApiServices {


  @override
  Future getGetApiResponse(String url) async {

    dynamic responseJson ;
    try {

      final response = await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    }on SocketException {

      throw FetchDataException('No Internet Connection');
    }

    return responseJson;

  }


  @override
  Future getPostApiResponse(String url , dynamic data) async{

    dynamic responseJson ;
    try {

      Response response = await post(
          Uri.parse(url),
          body: data
      ).timeout(Duration(seconds: 10));

      responseJson = returnResponse(response);
    }on SocketException {

      throw FetchDataException('No Internet Connection');
    }

    return responseJson ;
  }

  dynamic returnResponse (http.Response response){

    switch(response.statusCode){
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson ;
      case 400:
        throw BadRequestException(response.body.toString());
      case 500:
      case 404:
        throw UnauthorisedException(response.body.toString());
      default:
        throw FetchDataException('Error accured while communicating with server'+
            'with status code' +response.statusCode.toString());

    }
  }

}