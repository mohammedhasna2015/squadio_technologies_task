import 'dart:async';

import 'package:test_project/base/viewmodels/base_view_model.dart';
import 'package:test_project/features/detailsPeople/data/models/ResponseDetailsPeopleModel.dart';
import 'package:test_project/features/detailsPeople/data/models/ResponseImagesPeopleModel.dart';
import 'package:test_project/features/detailsPeople/data/repositories/details_people_repository.dart';

class DetailsPeopleViewModel extends BaseViewModel {
  DetailsPeopleRepository? detailsPeopleRepository;
  int? idPeople;
  DetailsPeopleViewModel({this.detailsPeopleRepository, this.idPeople});

  ResponseDetailsPeopleModel? responseDetailsPeopleModel;
  List<Profiles> listImages = List.empty(growable: true);
  @override
  FutureOr<void> init() {
    getDetailsPeople();
    getImagesPeople();
  }

  void getDetailsPeople() async {
    detailsPeopleRepository!.getDetailsPeople(id: idPeople).then((value) {
      responseDetailsPeopleModel = value;
      reloadState();
    });
  }

  void getImagesPeople() async {
    detailsPeopleRepository!.getImagesPeople(id: idPeople).then((value) {
      listImages = value.profiles!;
      reloadState();
    });
  }
}
