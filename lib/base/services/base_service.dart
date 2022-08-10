import 'dart:convert';

import 'package:http/http.dart' as http;

class BaseService {
  static BaseService instance = new BaseService.internal();
  static final String baseUrl ="https://api.themoviedb.org/3/" ;

  BaseService.internal();

  factory BaseService() => instance;

  Future<ServiceResponseModel> getRequest(String path, {int timeOut = 30}) async {
     try {
        return http.get(Uri.parse("$baseUrl$path")).timeout(Duration(seconds: timeOut)).then((http.Response response) async {
          print("getRequest:"+(baseUrl+path)+"");
          int statusCode = response.statusCode;
          if (statusCode == 200) {
            return ServiceResponseModel(isSuccess: true, data: response.body);
          } else {
            return ServiceResponseModel(errorMessage: "Connection failed by $statusCode code.");
          }
        });
      } catch (e) {
        return ServiceResponseModel(errorMessage: "Undefined problem happened!");
      }

  }
  Future<ServiceResponseModel> postRequest(String? path,Map<String,dynamic>? body,Map<String,String>? header, {int timeOut = 30}) async {
    // i can add here check connectivity
    try {
      return http.post(Uri.parse("$baseUrl$path"),body: json.encode(body),headers: header).timeout(Duration(seconds: timeOut)).then((http.Response response) async {
        int statusCode = response.statusCode;
        if (statusCode == 200) {
          print("postRequest:success");
          return ServiceResponseModel(isSuccess: true, data: response.body);
        } else {
          print("postRequest:error");
          return ServiceResponseModel(errorMessage: "Connection failed by $statusCode code.");
        }
      });
    } catch (e) {
      print("postRequest:exception");
      return ServiceResponseModel(errorMessage: "Undefined problem happened!");
    }
  }
}

class ServiceResponseModel {
  final bool isSuccess;
  final dynamic errorMessage;
  final dynamic data;

  ServiceResponseModel({this.isSuccess = false, this.errorMessage, this.data});
}
