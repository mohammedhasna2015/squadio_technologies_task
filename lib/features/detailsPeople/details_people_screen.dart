import 'package:flutter/material.dart';
import 'package:squadio_technologies_task/base/views/base_view.dart';
import 'package:squadio_technologies_task/features/detailsPeople/ViewsModels/details_people_view_model.dart';
import 'package:squadio_technologies_task/features/detailsPeople/data/repositories/details_people_repository.dart';
class DetailsPeopleScreen extends StatefulWidget {
  const DetailsPeopleScreen({Key? key, this.idPeople}) : super(key: key);
  final int? idPeople;
  @override
  State<DetailsPeopleScreen> createState() => _DetailsPeopleScreenState();
}

class _DetailsPeopleScreenState extends State<DetailsPeopleScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseView<DetailsPeopleViewModel>(
        vmBuilder: (context) =>
            DetailsPeopleViewModel(detailsPeopleRepository:
            DetailsPeopleRepository(),idPeople: widget.idPeople),
        builder: _detailsPeopleBuilder);
  }

  Widget _detailsPeopleBuilder(BuildContext context, DetailsPeopleViewModel
  model) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.84),
      body: Container(
          height: double.infinity,
          width: double.infinity,
      ),
    );
  }
}
