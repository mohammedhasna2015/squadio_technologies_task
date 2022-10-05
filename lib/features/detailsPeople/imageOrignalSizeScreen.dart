import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/core/shard.dart';

class ImageOriginalSizeScreen extends StatefulWidget {
  static const String id = "ImageOriginalSizeScreen";
  const ImageOriginalSizeScreen({Key? key, this.imagePath}) : super(key: key);
  final String? imagePath;
  @override
  State<ImageOriginalSizeScreen> createState() =>
      _ImageOriginalSizeScreenState();
}

class _ImageOriginalSizeScreenState extends State<ImageOriginalSizeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                Shard.savePhoto(widget.imagePath!);
              },
              icon: Icon(Icons.download),
            ),
          ],
          leading: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back),
              ),
            ],
          ),
          title: Text(
            "Image People",
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Colors.white.withOpacity(0.84),
        body: Image.network(widget.imagePath!));
  }
}
