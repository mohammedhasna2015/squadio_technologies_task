import 'dart:convert';

import 'package:test_project/base/services/base_service.dart';
import 'package:test_project/core/config.dart';
import 'package:test_project/core/constants.dart';
import 'package:test_project/core/preferences_utils.dart';
import 'package:test_project/features/people/data/models/ResponsePeopleModel.dart';

class PeopleRemoteDataSource {
  Future<ResponsePeopleModel> getAllPeople(int page) async {
    ServiceResponseModel response = await BaseService.instance.getRequest(
      "$all_people?api_key=$keyApi&language=en-US&page=$page",
    );
    if (response.isSuccess) {
      ResponsePeopleModel responsePeopleModel =
          ResponsePeopleModel.fromJson(json.decode(response.data));
      if (responsePeopleModel.results != null &&
          responsePeopleModel.results!.isNotEmpty) {
        saveDataLocal(page, responsePeopleModel.results!);
      }

      return responsePeopleModel;
    } else {
      return ResponsePeopleModel(
          page: 1,
          results: List.empty(growable: true),
          totalPages: 1,
          totalResults: 1);
    }
  }

  Future<void> saveDataLocal(int page, List<People> list) async {
    if (page == 1) {
      PreferenceUtils.setPrefString(PREF_PEOPLE_LIST, json.encode(list));
    }
  }
}
