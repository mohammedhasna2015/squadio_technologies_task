
import 'package:squadio_technologies_task/features/detailsPeople/data/datasources/details_people_remote_data_source.dart';
import 'package:squadio_technologies_task/features/detailsPeople/data/models/ResponseDetailsPeopleModel.dart';

class DetailsPeopleRepository {
  Future<ResponseDetailsPeopleModel> getDetailsPeople({int? id}) async {
      return DetailsPeopleRemoteDataSource().getDetailsPeople(id!);
  }
}
