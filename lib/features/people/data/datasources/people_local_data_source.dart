import 'dart:convert';

import 'package:test_project/core/constants.dart';
import 'package:test_project/core/preferences_utils.dart';
import 'package:test_project/features/people/data/models/ResponsePeopleModel.dart';

class PeopleLocalDataSource {
  Future<ResponsePeopleModel> getAllPeople(int page) async {
    String jsonData = PreferenceUtils.getPrefString(PREF_PEOPLE_LIST);
    List<dynamic> data = json.decode(jsonData);
    List<People> list = data.map<People>((jsonItem) {
      return People.fromJson(jsonItem);
    }).toList();
    if (list.isNotEmpty) {
      return ResponsePeopleModel(
          page: 1, results: list, totalPages: 1, totalResults: 1);
    } else {
      return ResponsePeopleModel(
          page: 1,
          results: List.empty(growable: true),
          totalPages: 1,
          totalResults: 1);
    }
  }
}
