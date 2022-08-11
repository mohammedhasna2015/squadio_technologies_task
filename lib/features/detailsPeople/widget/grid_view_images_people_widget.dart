import 'package:flutter/material.dart';
import 'package:squadio_technologies_task/core/config.dart';
import 'package:squadio_technologies_task/features/detailsPeople/data/models/ResponseImagesPeopleModel.dart';

class GridViewImagesPeopleWidget extends StatefulWidget {
  const GridViewImagesPeopleWidget({Key? key, required this.list}) : super(key: key);
 final  List<Profiles>? list;
  @override
  State<GridViewImagesPeopleWidget> createState() => _GridViewImagesPeopleWidgetState();
}

class _GridViewImagesPeopleWidgetState extends State<GridViewImagesPeopleWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder( gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
      ),
   itemCount: widget.list!.length,
   itemBuilder: (BuildContext context,int index){
        return ItemImagePeopleWidget(profiles: widget.list![index],);
   }),
    );
  }
}
class ItemImagePeopleWidget extends StatefulWidget {
  const ItemImagePeopleWidget({Key? key, this.profiles}) : super(key: key);
 final Profiles? profiles ;
  @override
  State<ItemImagePeopleWidget> createState() => _ItemImagePeopleWidgetState();
}

class _ItemImagePeopleWidgetState extends State<ItemImagePeopleWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:1000,
      width: 200,
      child: Image.network(
        "https://image.tmdb.org/t/p/w500${widget.profiles!
          .filePath}",fit: BoxFit.cover,),
    );
  }
}

