import 'dart:convert';
import 'package:squadio_technologies_task/base/services/base_service.dart';
import 'package:squadio_technologies_task/core/config.dart';
import 'package:squadio_technologies_task/core/constants.dart';
import 'package:squadio_technologies_task/core/preferences_utils.dart';
import 'package:squadio_technologies_task/features/detailsPeople/data/models/ResponseDetailsPeopleModel.dart';
import 'package:squadio_technologies_task/features/people/data/models/ResponsePeopleModel.dart';

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
}
