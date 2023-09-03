// import 'package:mvvm1/data/response/status.dart';
// import 'package:mvvm1/model/movies_model.dart';
//
// class ApiResponse<T>{
//   Status? status;
//   T?data;
//   String?message;
//   ApiResponse(this.status,this.data,this.message);
//   ApiResponse.loading():status=Status.LOADING;
//   ApiResponse.completed(MovieListModel value):status=Status.COMPLETED;
//   ApiResponse.error(String string):status=Status.ERROR;
//
//   @override
//   String toString(){
//     return"Status: $status \n message:$message \n Data:$data";
//   }
// }


import 'package:mvvm1/data/response/status.dart';

class ApiResponse<T> {

  Status? status ;
  T? data ;
  String? message ;

  ApiResponse(this.status , this.data, this.message);


  ApiResponse.loading() : status = Status.LOADING ;

  ApiResponse.completed(this.data) : status = Status.COMPLETED ;

  ApiResponse.error(this.message) : status = Status.ERROR ;


  @override
  String toString(){
    return "Status : $status \n Message : $message \n Data: $data" ;
  }


}
