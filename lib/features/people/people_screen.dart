import 'package:flutter/material.dart';
import 'package:squadio_technologies_task/base/views/base_view.dart';
import 'package:squadio_technologies_task/features/people/ViewsModels/people_view_model.dart';
import 'package:squadio_technologies_task/features/people/data/repositories/people_repository.dart';
import 'package:squadio_technologies_task/features/people/widget/people_list_widget.dart';

class PeopleScreen extends StatefulWidget {
  const PeopleScreen({Key? key}) : super(key: key);

  @override
  _PeopleScreenState createState() => _PeopleScreenState();
}

class _PeopleScreenState extends State<PeopleScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseView<PeopleViewModel>(
        vmBuilder: (context) =>
            PeopleViewModel(peopleRepository: PeopleRepository()),
        builder: _peopleBuilder);
  }

  Widget _peopleBuilder(BuildContext context, PeopleViewModel model) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.84),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          child: PeopleListWidget(
            resultPeopleList: model.peopleList,
            peopleViewModel: model,
          )),
    );
  }
}
