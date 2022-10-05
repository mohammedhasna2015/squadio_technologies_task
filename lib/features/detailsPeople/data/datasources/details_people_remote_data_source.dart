import 'dart:convert';

import 'package:test_project/base/services/base_service.dart';
import 'package:test_project/core/config.dart';
import 'package:test_project/features/detailsPeople/data/models/ResponseDetailsPeopleModel.dart';
import 'package:test_project/features/detailsPeople/data/models/ResponseImagesPeopleModel.dart';

class DetailsPeopleRemoteDataSource {
  Future<ResponseDetailsPeopleModel> getDetailsPeople(int id) async {
    ServiceResponseModel response = await BaseService.instance.getRequest(
      "$details_people$id?api_key=$keyApi&language=en-US",
    );
    if (response.isSuccess) {
      ResponseDetailsPeopleModel responsePeopleModel =
          ResponseDetailsPeopleModel.fromJson(json.decode(response.data));
      return responsePeopleModel;
    } else {
      return ResponseDetailsPeopleModel();
    }
  }

  Future<ResponseImagesPeopleModel> getImagesPeople(int id) async {
    ServiceResponseModel response = await BaseService.instance.getRequest(
      "$details_people$id/images?api_key=$keyApi&language=en-US",
    );
    if (response.isSuccess) {
      ResponseImagesPeopleModel responsePeopleModel =
          ResponseImagesPeopleModel.fromJson(json.decode(response.data));
      return responsePeopleModel;
    } else {
      return ResponseImagesPeopleModel();
    }
  }
}
