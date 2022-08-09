import 'dart:async';

import 'package:squadio_technologies_task/base/viewmodels/base_view_model.dart';
import 'package:squadio_technologies_task/features/movie/data/repositories/people_repository.dart';
import 'package:squadio_technologies_task/core/config.dart';
import 'package:squadio_technologies_task/core/shard.dart';

import '../data/models/movie_model.dart';

class PeopleViewModel extends BaseViewModel{
  MovieService? movieService;

  PeopleViewModel({this.movieService});
  List<Results> peopleList =new List.empty(growable:true );
  List<String>? originalTitleMovie =new List.empty(growable:true );
  @override
  FutureOr<void> init() {
     getAllPeople();
  }



  void getAllPeople() async{
    bool statusConnection=  await Shard().checkConnection();
    if (statusConnection) {
      changeStatus();
      peopleList =new List.empty(growable:true );
      originalTitleMovie =new List.empty(growable:true );
      movieService!.getAllPeople("$all_people?api_key=$keyPeople").then((value) {
        changeStatus();
        if(value.isSuccess){
          MovieModel movieModel =value.data;
          if(movieModel.results!=null&&movieModel.results!.isNotEmpty){
            print("getAllMovie:"+movieModel.results!.length.toString());
           peopleList=movieModel.results!;
           reloadState();
          }
        }else{
          changeStatus();
          reloadState();
        }
      });
    }
  }


}