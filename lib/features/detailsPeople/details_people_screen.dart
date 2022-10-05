import 'package:flutter/material.dart';
import 'package:test_project/base/views/base_view.dart';
import 'package:test_project/features/detailsPeople/ViewsModels/details_people_view_model.dart';
import 'package:test_project/features/detailsPeople/data/repositories/details_people_repository.dart';
import 'package:test_project/features/detailsPeople/widget/grid_view_images_people_widget.dart';

class DetailsPeopleScreen extends StatefulWidget {
  static const String id = "DetailsPeopleScreen";
  const DetailsPeopleScreen({Key? key, this.idPeople}) : super(key: key);
  final int? idPeople;
  @override
  State<DetailsPeopleScreen> createState() => _DetailsPeopleScreenState();
}

class _DetailsPeopleScreenState extends State<DetailsPeopleScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseView<DetailsPeopleViewModel>(
        vmBuilder: (context) => DetailsPeopleViewModel(
            detailsPeopleRepository: DetailsPeopleRepository(),
            idPeople: widget.idPeople),
        builder: _detailsPeopleBuilder);
  }

  Widget _detailsPeopleBuilder(
      BuildContext context, DetailsPeopleViewModel model) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          "Details People",
          style: TextStyle(color: Colors.black),
        ),
      ),
      backgroundColor: Colors.white.withOpacity(0.84),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          model.responseDetailsPeopleModel != null
              ? Text(model.responseDetailsPeopleModel!.name ?? "",
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w900))
              : Container(),
          model.responseDetailsPeopleModel != null
              ? Text(
                  "Adult:${model.responseDetailsPeopleModel!.adult != null ? model.responseDetailsPeopleModel!.adult.toString() : ""}",
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w900))
              : Container(),
          model.responseDetailsPeopleModel != null
              ? Text(
                  "Gender:${model.responseDetailsPeopleModel!.gender != null ? model.responseDetailsPeopleModel!.gender.toString() : ""}",
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w900))
              : Container(),
          model.responseDetailsPeopleModel != null
              ? Text(
                  "known For "
                  "Department:${model.responseDetailsPeopleModel!.knownForDepartment ?? ""}",
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w900))
              : Container(),
          model.responseDetailsPeopleModel != null
              ? Text(
                  "birthday${model.responseDetailsPeopleModel!.birthday ?? ""}",
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w900))
              : Container(),
          model.listImages.isNotEmpty
              ? GridViewImagesPeopleWidget(list: model.listImages)
              : Container()
        ],
      ),
    );
  }
}
