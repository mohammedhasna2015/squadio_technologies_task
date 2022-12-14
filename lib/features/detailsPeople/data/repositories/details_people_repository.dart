import 'package:test_project/features/detailsPeople/data/datasources/details_people_remote_data_source.dart';
import 'package:test_project/features/detailsPeople/data/models/ResponseDetailsPeopleModel.dart';
import 'package:test_project/features/detailsPeople/data/models/ResponseImagesPeopleModel.dart';

class DetailsPeopleRepository {
  Future<ResponseDetailsPeopleModel> getDetailsPeople({int? id}) async {
    return DetailsPeopleRemoteDataSource().getDetailsPeople(id!);
  }

  Future<ResponseImagesPeopleModel> getImagesPeople({int? id}) async {
    return DetailsPeopleRemoteDataSource().getImagesPeople(id!);
  }
}
