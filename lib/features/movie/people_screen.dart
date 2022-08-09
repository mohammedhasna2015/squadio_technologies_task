import 'package:flutter/material.dart';
import 'package:squadio_technologies_task/base/views/base_view.dart';
import 'package:squadio_technologies_task/features/movie/ViewsModels/people_view_model.dart';
import 'package:squadio_technologies_task/features/movie/data/repositories/people_repository.dart';
import 'package:squadio_technologies_task/features/movie/widget/people_list_widget.dart';

class PeopleScreen extends StatefulWidget {
  const PeopleScreen({Key? key}) : super(key: key);

  @override
  _PeopleScreenState createState() => _PeopleScreenState();
}

class _PeopleScreenState extends State<PeopleScreen> {
  @override
  Widget build(BuildContext context) {

    return BaseView<PeopleViewModel>(vmBuilder: (context)=>
        PeopleViewModel(movieService: MovieService()), builder: _movieBuilder);

  }

  Widget _movieBuilder(BuildContext context, PeopleViewModel model) {
    return Scaffold(
      body:Container(
        height: double.infinity,
        width: double.infinity,
          child:PeopleListWidget(resultPeopleList:model.peopleList,)
      ),
    );

  }
}
