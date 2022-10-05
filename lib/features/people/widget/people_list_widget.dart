import 'package:flutter/material.dart';
import 'package:test_project/features/people/ViewsModels/people_view_model.dart';
import 'package:test_project/features/people/data/models/ResponsePeopleModel.dart';
import 'package:test_project/features/people/widget/people_item_widget.dart';

class PeopleListWidget extends StatelessWidget {
  final List<People>? resultPeopleList;
  final PeopleViewModel? peopleViewModel;

  const PeopleListWidget(
      {Key? key, this.resultPeopleList, this.peopleViewModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding:
          EdgeInsetsDirectional.only(start: 20, end: 20, top: 50, bottom: 30),
      itemCount: resultPeopleList!.length,
      controller: peopleViewModel!.scrollController,
      itemBuilder: (BuildContext context, int index) {
        return PeopleItemWidget(
          name: resultPeopleList![index].name!,
          id: resultPeopleList![index].id!,
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: 8,
        );
      },
    );
  }
}
