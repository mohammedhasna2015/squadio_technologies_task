import 'package:flutter/material.dart';
import 'package:squadio_technologies_task/features/movie/data/models/movie_model.dart';

class PeopleListWidget extends StatelessWidget {

  final List<Results>? resultPeopleList;
  const PeopleListWidget( {Key? key, this.resultPeopleList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: resultPeopleList!.length,
          itemBuilder: (BuildContext context, int index){
        return itemMovielist(resultPeopleList![index].originalTitle!);
      }),
    );
  }

  Widget itemMovielist(String originalTitle) {

    return Container(
      child: Text(originalTitle,style: TextStyle(color: Colors.red,fontSize: 18,fontWeight: FontWeight.w900),),
    );
  }
}
