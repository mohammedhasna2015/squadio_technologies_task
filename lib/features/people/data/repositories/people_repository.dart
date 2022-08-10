import 'dart:convert';

import 'package:squadio_technologies_task/base/services/base_service.dart';
import 'package:squadio_technologies_task/core/shard.dart';
import 'package:squadio_technologies_task/features/people/data/datasources/people_local_data_source.dart';
import 'package:squadio_technologies_task/features/people/data/datasources/people_remote_data_source.dart';
import 'package:squadio_technologies_task/features/people/data/models/ResponsePeopleModel.dart';
import 'package:squadio_technologies_task/model/response_model.dart';

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
