import 'dart:async';

import 'package:flutter/material.dart';
import 'package:test_project/base/viewmodels/base_view_model.dart';
import 'package:test_project/core/shard.dart';
import 'package:test_project/features/people/data/models/ResponsePeopleModel.dart';
import 'package:test_project/features/people/data/repositories/people_repository.dart';

class PeopleViewModel extends BaseViewModel {
  PeopleRepository? peopleRepository;
  var scrollController = ScrollController();
  int page = 1;
  int? totalPage = 0;

  PeopleViewModel({this.peopleRepository});

  List<People> peopleList = List.empty(growable: true);

  @override
  FutureOr<void> init() {
    getAllPeople();
    scrollController.addListener(pagination);
  }

  Future<void> pagination() async {
    bool statusConnection = await Shard().checkConnection();
    if (statusConnection) {
      if ((scrollController.position.pixels ==
              scrollController.position.maxScrollExtent) &&
          (page <= totalPage!)) {
        changeStatus();
        page += 1;
        loadMoreData();
      }
    }
  }

  Future<void> loadMoreData() async {
    peopleRepository!.getAllPeople(page: page).then((value) {
      peopleList.addAll(value.results!);
      totalPage = value.totalPages;
      reloadState();
      changeStatus();
    });
  }

  void getAllPeople() async {
    peopleList = List.empty(growable: true);
    peopleRepository!.getAllPeople(page: 1).then((value) {
      peopleList = value.results ?? List.empty(growable: true);
      totalPage = value.totalPages;
      reloadState();
    });
  }
}
