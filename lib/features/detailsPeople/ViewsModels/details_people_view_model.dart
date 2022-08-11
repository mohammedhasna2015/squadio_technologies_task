import 'dart:async';

import 'package:flutter/material.dart';
import 'package:squadio_technologies_task/base/viewmodels/base_view_model.dart';
import 'package:squadio_technologies_task/features/detailsPeople/data/models/ResponseDetailsPeopleModel.dart';
import 'package:squadio_technologies_task/features/detailsPeople/data/models/ResponseImagesPeopleModel.dart';
import 'package:squadio_technologies_task/features/detailsPeople/data/repositories/details_people_repository.dart';
import 'package:squadio_technologies_task/features/people/data/models/ResponsePeopleModel.dart';
import 'package:squadio_technologies_task/features/people/data/repositories/people_repository.dart';
import 'package:squadio_technologies_task/core/config.dart';
import 'package:squadio_technologies_task/core/shard.dart';

class DetailsPeopleViewModel extends BaseViewModel {
  DetailsPeopleRepository? detailsPeopleRepository;
  int? idPeople;
  DetailsPeopleViewModel({this.detailsPeopleRepository,this.idPeople});

  ResponseDetailsPeopleModel? responseDetailsPeopleModel ;
  List<Profiles> listImages=List.empty(growable: true);
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
