import 'package:flutter/material.dart';
import 'package:pixabay/utils/color.dart';
import 'package:pixabay/view/home/home_model.dart';

class UploadIcon extends StatelessWidget {
  final int index;
  final HomeModel model;

  const UploadIcon({
  this.index,
  this.model,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>model.onItemTapped(index),
          child: Container(
        width: 45,
        height: 30,
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              child: Container(
                width: 35,
                height: 30,
                decoration: BoxDecoration(
                    color: secondary, borderRadius: BorderRadius.circular(8)),
              ),
            ),
            Positioned(
              right: 0,
              child: Container(
                width: 35,
                height: 30,
                decoration: BoxDecoration(
                    color: primary, borderRadius: BorderRadius.circular(8)),
              ),
            ),
            Positioned(
              right: 5,
              child: Container(
                width: 35,
                height: 30,
                decoration: BoxDecoration(
                    color: white, borderRadius: BorderRadius.circular(8)),
                child: Icon(Icons.add),
              ),
            )
          ],
        ),
      ),
    );
  }
}
