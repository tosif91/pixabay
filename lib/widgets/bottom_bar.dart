import 'package:flutter/material.dart';
import 'package:pixabay/utils/color.dart';
import 'package:pixabay/utils/constant.dart';
import 'package:pixabay/view/home/home_model.dart';
import 'package:pixabay/widgets/bottom_icon.dart';
import 'package:pixabay/widgets/upload.dart';

class BottomBar extends StatelessWidget {
  final HomeModel model;
  BottomBar({this.model});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
          child: Row(
               
             crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:
              
               <Widget>[
                BottomIcon(index: 0, model: model),
                BottomIcon(index: 1, model: model),
                UploadIcon(index: 2, model: model),
                BottomIcon(index: 3, model: model),
                BottomIcon(index: 4, model: model),
              ]),
              )
        ),
      );
   
  }
}
