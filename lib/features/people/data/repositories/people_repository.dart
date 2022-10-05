import 'dart:convert';

import 'package:test_project/base/services/base_service.dart';
import 'package:test_project/core/shard.dart';
import 'package:test_project/features/people/data/datasources/people_local_data_source.dart';
import 'package:test_project/features/people/data/datasources/people_remote_data_source.dart';
import 'package:test_project/features/people/data/models/ResponsePeopleModel.dart';
import 'package:test_project/model/response_model.dart';

class PeopleRepository {
  Future<ResponsePeopleModel> getAllPeople({int? page}) async {
    bool statusConnection = await Shard().checkConnection();
    if (statusConnection) {
      return PeopleRemoteDataSource().getAllPeople(page!);
    } else {
      return PeopleLocalDataSource().getAllPeople(page!);
    }
  }
}
