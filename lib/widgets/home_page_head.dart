import 'package:flutter/material.dart';
import 'package:pixabay/utils/color.dart';
import 'package:pixabay/view/home/home_model.dart';


class HeaderHomePage extends StatelessWidget {

 final PageController controller;
  const HeaderHomePage({
    Key key,
    this.controller
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        InkWell(
          onTap: (){controller.jumpToPage(0);},
                  child: Text(
            "Pixabay",
            style: TextStyle(
              color: white.withOpacity(0.7),
              fontSize: 15,
            ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          "|",
          style: TextStyle(
            color: white.withOpacity(0.3),
            fontSize: 15,
          ),
        ),
        SizedBox(
          width: 8,
        ),
        InkWell(

          onTap: (){controller.jumpToPage(2);},
                  child: Text(
            "Local",
            style: TextStyle(
                color: white, fontSize: 17, fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}