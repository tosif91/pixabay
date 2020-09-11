import 'package:flutter/material.dart';
import 'package:pixabay/utils/color.dart';
import 'package:pixabay/widgets/home_page_head.dart';
import 'package:pixabay/widgets/left_panel.dart';
import 'package:pixabay/widgets/right_panel.dart';
import 'package:video_player/video_player.dart';
class VideoPlayerWidget extends StatefulWidget {
  
  final String videoUrl;
  final String name;
  final String caption;

  final String songName;
  final String profileImg;
  final int likes;
  final int comments;
  final int shares;
  final PageController controller;
  final String albumImg;
  VideoPlayerWidget(
      {Key key,
      @required this.size,
      this.controller,
      this.name,
      this.caption,
      this.songName,
      this.profileImg,
      this.likes,
      this.comments,
      this.shares,
      this.albumImg,
      this.videoUrl})
      : super(key: key);

  final Size size;

  @override
  _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  VideoPlayerController _videoController;
  bool isShowPlaying = false;
   
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
 _videoController = VideoPlayerController.network(widget.videoUrl)
      ..initialize().then((_) {
        _videoController.setLooping(true);
     
     setState(() {
       isShowPlaying=false;
     });
       
      });

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
   _videoController.dispose();
  }

  Widget isPlaying() {
    return _videoController.value.isPlaying && !isShowPlaying
        ? Container()
        : Icon(
            Icons.play_arrow,
            size: 80,
            color: white.withOpacity(0.6),
          );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _videoController.value.isPlaying
              ? _videoController.pause()
              : _videoController.play();
        });
      },
      child: RotatedBox(
        quarterTurns: -1,
        child: Container(
            height: widget.size.height,
            width: widget.size.width,
            child: Stack(
              children: <Widget>[
                Container(
                  height: widget.size.height,
                  width: widget.size.width,
                  decoration: BoxDecoration(color: black),
                  child: Stack(
                    children: <Widget>[
                      VideoPlayer(_videoController),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(),
                          child: isPlaying(),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: widget.size.height,
                  width: widget.size.width,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 15, top: 20, bottom: 10),
                    child: SafeArea(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          HeaderHomePage(controller:widget.controller),
                          Expanded(
                              child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(bottom:40.0),
                                child: LeftPanel(
                                  size: widget.size,
                                  name: "${widget.name}",
                                  caption: "${widget.caption}",
                                  songName: "${widget.songName}",
                                ),
                              ),
                              RightPanel(
                                size: widget.size,
                                likes: "${widget.likes}",
                                comments: "${widget.comments}",
                                shares: "${widget.shares}",
                                profileImg: "${widget.profileImg}",
                                albumImg: "${widget.albumImg}",
                              )
                            ],
                          ))
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}