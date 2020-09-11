import 'package:flutter/material.dart';
import 'package:pixabay/utils/color.dart';


class LeftPanel extends StatelessWidget {
  final String name;
  final String caption;
  final String songName;
  const LeftPanel({
    Key key,
    @required this.size,
    this.name,
    this.caption,
    this.songName,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.8,
      height: size.height/1.5,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            name,
            style: TextStyle(
                color: white, fontWeight: FontWeight.normal, fontSize: 14),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            caption,
            style: TextStyle(color: white,fontSize: 13),
          ),
         SizedBox(height:10),
          Row(
            children: <Widget>[
              Icon(
                Icons.music_note,
                color: white,
                size: 15,
              ),
              Flexible(
                child: Text(
                  songName,
                  style: TextStyle(color: white,fontSize: 13),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}