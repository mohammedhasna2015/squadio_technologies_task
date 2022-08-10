import 'package:flutter/material.dart';

class PeopleItemWidget extends StatelessWidget {
  const PeopleItemWidget({
    Key? key,
    this.name,
  }) : super(key: key);
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsetsDirectional.only(top: 20, bottom: 20),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Text(name!,
          style: const TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900)),
    );
  }
}
