import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sixvalley_ecommerce/data/model/response/base/error_response.dart';
import 'package:flutter_sixvalley_ecommerce/main.dart';
import 'package:flutter_sixvalley_ecommerce/view/basewidget/show_custom_snakbar.dart';

class ApiErrorHandler {
  static dynamic getMessage(error) {
    dynamic errorDescription = "";
    if (error is Exception) {
      try {
        if (error is DioException) {
          switch (error.type) {
            case DioExceptionType.cancel:
              errorDescription = "Request to API server was cancelled";
              break;
            case DioExceptionType.connectionTimeout:
              errorDescription = "Connection timeout with API server";
              break;
            case DioExceptionType.unknown:
              errorDescription =
              "Connection to API server failed due to internet connection";
              break;
            case DioExceptionType.receiveTimeout:
              errorDescription =
              "Receive timeout in connection with API server";
              break;
            case DioExceptionType.badResponse:
              switch (error.response!.statusCode) {
                case 403:
                  debugPrint('<==Here is error body==${error.response!.data.toString()}===>');
                  if(error.response!.data['errors'] != null){
                    errorDescription = error.response!.data['errors'][0];
                  }else{
                    errorDescription = error.response!.data['message'];
                  }
                  break;
                case 404:
                case 500:
                case 503:
                case 429:
                  errorDescription = error.response!.statusMessage;
                  break;
                default:
                  ErrorResponse errorResponse =
                  ErrorResponse.fromJson(error.response!.data);
                  if (errorResponse.errors != null &&
                      errorResponse.errors!.isNotEmpty) {
                    errorDescription = errorResponse;
                  } else {
                    errorDescription =
                    "Failed to load data - status code: ${error.response!.statusCode}";
                  }
              }
              break;
            case DioExceptionType.sendTimeout:
              errorDescription = "Send timeout with server";
              break;
          }
        } else {
          errorDescription = "Unexpected error occured";
        }
      } on FormatException catch (e) {
        errorDescription = e.toString();
      }
    } else {
      errorDescription = "is not a subtype of exception";
    }
    return errorDescription;
  }
}
class MyApiErrorHandler {
  static dynamic getMessage(error) {
    dynamic errorDescription = "";
    if (error is Exception) {
      // Logger().f(error);
      try {
        if (error is DioError) {
          switch (error.type) {
            case DioExceptionType.cancel:
              errorDescription = "Request to API server was cancelled";
              break;
            case DioExceptionType.connectionTimeout:
              errorDescription = "Connection timeout with API server";
              break;
            case DioExceptionType.unknown:
              errorDescription =
                  "Connection to API server failed due to internet connection";
              break;
            case DioExceptionType.receiveTimeout:
              errorDescription =
                  "Receive timeout in connection with API server";
              break;
            case DioExceptionType.badResponse:
              switch (error.response!.statusCode) {
                case 403:
                  // Logger().f(error.response!.data);
                  //      errorDescription = error.response!.data['message'];
                  errorDescription = error.response!.data['errors'][0];
                  // ErrorResponse errorResponse =
                  //     ErrorResponse.fromJson(error.response!.data);
                  // errorDescription = errorResponse.errors![0].message;
                  showCustomSnackBar(errorDescription, Get.context!);
                  break;
                case 404:
                case 500:
                case 503:
                  errorDescription = error.response!.statusMessage;
                  break;
                default:
                  ErrorResponse errorResponse =
                      ErrorResponse.fromJson(error.response!.data);
                  if (errorResponse.errors != null &&
                      errorResponse.errors!.isNotEmpty) {
                    errorDescription = errorResponse;
                  } else {
                    errorDescription =
                        "Failed to load data - status code: ${error.response!.statusCode}";
                  }
              }
              break;
            case DioExceptionType.sendTimeout:
              errorDescription = "Send timeout with server";
              break;
          }
        } else {
          errorDescription = "Unexpected error occured";
        }
      } on FormatException catch (e) {
        errorDescription = e.toString();
      }
    } else {
      errorDescription = "is not a subtype of exception";
    }
    return errorDescription;
  }
}