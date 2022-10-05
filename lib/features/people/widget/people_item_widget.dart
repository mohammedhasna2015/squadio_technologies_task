import 'package:flutter/material.dart';
import 'package:test_project/core/init_app.dart';
import 'package:test_project/core/navigator/navigation_service.dart';
import 'package:test_project/features/detailsPeople/details_people_screen.dart';

class PeopleItemWidget extends StatelessWidget {
  const PeopleItemWidget({
    Key? key,
    this.name,
    this.id,
  }) : super(key: key);
  final String? name;
  final int? id;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        getIt<NavigationService>().navigateTo(DetailsPeopleScreen.id, args: id);
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsetsDirectional.only(top: 20, bottom: 20),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Text(name!,
            style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w900)),
      ),
    );
  }
}
