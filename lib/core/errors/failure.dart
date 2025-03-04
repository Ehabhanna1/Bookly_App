import 'package:dio/dio.dart';

abstract class Failure {

  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);

  factory ServerFailure.fromDioError(DioError e) {

    switch (e.type) {
      
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with API server');
        
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with API server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with API server');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad certificate with API server');
        
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(e.response!.statusCode!, e.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to API server was canceled');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection error with API server');
      case DioExceptionType.unknown:
       return ServerFailure('Unexpected error occurred, please try again!');
       
    }

  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {

    if ( statusCode == 404){
      return ServerFailure("Your request not found, please try later!");
    }else if (statusCode == 500){
      return ServerFailure("there is a problem with server, please try later!");
    }else if (statusCode == 400 || statusCode == 401 || statusCode == 403){
      return ServerFailure(response['error']['message']);
    }else{
      return ServerFailure("There was an error, please try again!");
    }


  }
}
