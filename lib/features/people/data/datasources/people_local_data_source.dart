import 'dart:convert';
import 'package:squadio_technologies_task/core/constants.dart';
import 'package:squadio_technologies_task/core/preferences_utils.dart';
import 'package:squadio_technologies_task/features/people/data/models/ResponsePeopleModel.dart';

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
