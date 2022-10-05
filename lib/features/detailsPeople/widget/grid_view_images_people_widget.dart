import 'package:flutter/material.dart';
import 'package:test_project/core/config.dart';
import 'package:test_project/core/init_app.dart';
import 'package:test_project/core/navigator/navigation_service.dart';
import 'package:test_project/features/detailsPeople/data/models/ResponseImagesPeopleModel.dart';
import 'package:test_project/features/detailsPeople/imageOrignalSizeScreen.dart';

class GridViewImagesPeopleWidget extends StatefulWidget {
  const GridViewImagesPeopleWidget({Key? key, required this.list})
      : super(key: key);
  final List<Profiles>? list;
  @override
  State<GridViewImagesPeopleWidget> createState() =>
      _GridViewImagesPeopleWidgetState();
}

class _GridViewImagesPeopleWidgetState
    extends State<GridViewImagesPeopleWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemCount: widget.list!.length,
          itemBuilder: (BuildContext context, int index) {
            return ItemImagePeopleWidget(
              profiles: widget.list![index],
            );
          }),
    );
  }
}

class ItemImagePeopleWidget extends StatefulWidget {
  const ItemImagePeopleWidget({Key? key, this.profiles}) : super(key: key);
  final Profiles? profiles;
  @override
  State<ItemImagePeopleWidget> createState() => _ItemImagePeopleWidgetState();
}

class _ItemImagePeopleWidgetState extends State<ItemImagePeopleWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        getIt<NavigationService>().navigateTo(ImageOriginalSizeScreen.id,
            args: "$image_path${widget.profiles!.filePath}");
      },
      child: SizedBox(
        height: 1000,
        width: 200,
        child: Image.network(
          "$image_path${widget.profiles!.filePath}",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
