// class AppException implements Exception{
//   final message;
//   final prefix;
//   AppException([this.message,this.prefix]);
//
//   String toString(){
//     return '$prefix$message';
//   }
// }
// class FetchDataException extends AppException{
//   FetchDataException([String?message]):super(message,'error during communication');
// }
// class BadRequestException extends AppException{
//   BadRequestException([String?message]):super(message,'invalid request  ');
// }
// class UnAuthourizedException extends AppException{
//   UnAuthourizedException([String?message]):super(message,'UnAuthourized request  ');
// }
// class InvalidInputException extends AppException{
//   InvalidInputException([String?message]):super(message,'Invalid request  ');
// }
class AppException implements Exception {

  final _message ;
  final _prefix ;
  AppException([this._message , this._prefix]);

  String toString(){
    return '$_prefix$_message' ;
  }

}


class FetchDataException extends AppException {

  FetchDataException([String? message]) : super(message, 'Error During Communication');
}


class BadRequestException extends AppException {

  BadRequestException([String? message]) : super(message, 'Invalid request');
}


class UnauthorisedException extends AppException {

  UnauthorisedException([String? message]) : super(message, 'Unauthorised request');
}


class InvalidInputException extends AppException {

  InvalidInputException([String? message]) : super(message, 'Invalid Inpit');
}

