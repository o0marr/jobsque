import 'dart:convert';

import 'package:dio/dio.dart';

class DioHelper {
  static const String baseUrl="https://project2.amit-learning.com/api/";
  static final _dio=Dio(
    BaseOptions(
      baseUrl: baseUrl,
      headers: {
        "Accept":"application/json"

      }
    )
  );
static Future<CustomResponse> send( String path,{Map<String,dynamic>? data})async
{
  print("(post)!!${baseUrl}$path");
    try {
      final response = await _dio.post(path, data: data);
      print(response.data);
      return CustomResponse(isSuccess: true,data: response.data,msg: response.data["massege"]);
    } on DioException catch (ex) {
      return _HandleException(ex);

    }
  }
  static CustomResponse _HandleException(DioException ex){
    print(ex.error);
    print(ex.response?.data);
    print(ex.message);
    print(ex.requestOptions);
    print(ex.stackTrace);
    print(ex.type);
    return CustomResponse(isSuccess: false,msg: ex.message);

  }
  static Future<CustomResponse> get (String path,{Map<String,dynamic>?queryParameters })async{
   final response = await _dio.get(path);
   try {
       final response = await _dio.get(path, queryParameters:queryParameters );
     print(response.data);
     return CustomResponse(isSuccess: true,data: response.data,msg: response.data["massege"]);
   } on DioException catch (ex) {
     return _HandleException(ex);
   }

 }
}

class CustomResponse{
  final bool isSuccess;
  final data;
  final String? msg;

  CustomResponse({required this.isSuccess, this.data, this.msg});
}
