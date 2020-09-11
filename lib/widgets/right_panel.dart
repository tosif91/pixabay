
import 'package:flutter/material.dart';
import 'package:pixabay/utils/constant.dart';
import 'package:pixabay/widgets/my_album.dart';


class RightPanel extends StatelessWidget {
  final String likes;
  final String comments;
  final String shares;
  final String profileImg;
  final String albumImg;
  const RightPanel({
    Key key,
    @required this.size,
    this.likes,
    this.comments,
    this.shares,
    this.profileImg,
    this.albumImg,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: MediaQuery.of(context).size.height/1.6,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
        getProfile(profileImg),
        SizedBox(height:7.0),
        getIcons(TikTokIcons.heart, likes, 26.0),
        SizedBox(height:7.0),
        getIcons(TikTokIcons.chat_bubble, comments, 26.0),
        SizedBox(height:7.0),
        getIcons(TikTokIcons.reply, shares, 20.0),
        SizedBox(height:7.0),
        getAlbum(albumImg)
          ],
        ),
      ),
    );
  }
}