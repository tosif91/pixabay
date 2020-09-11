import 'package:video_player/video_player.dart';

class VideoModel {
  var hits;
  int total;
  int totalHits;

  VideoModel({this.hits,this.total,this.totalHits});

 VideoModel.fromJson(Map<dynamic, dynamic> json) {
    // url = json['videos']['large']['url'];
    hits = json['hits'];
    total = json['total']; 
    totalHits = json['totalHits'];
    
  }


}

class PixVideo {
  int views;
  int favorites;
  String user;
  String userPic;
  int likes;
  int comments;
  String tags;
  String url;
  String type;
  int downloads;
  VideoPlayerController controller;

  PixVideo({
    this.downloads,
    this.type,
    this.tags,
    this.favorites,
    this.user,
    this.userPic,
     this.url,
    this.likes,
    this.comments,
  });

  PixVideo.fromJson(Map<dynamic, dynamic> json) {
    url = json['videos']['small']['url'];
    user = json['user'];
    downloads=json['downloads'];
    userPic = json['userImageURL'];
    likes = json['likes'];
    comments = json['comments'];
    favorites = json['favorites'];
    tags = json['tags'];
    type = json['type'];
   
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['user'] = this.user;
    data['user_pic'] = this.userPic;
    data['type'] = this.type;
    data['likes'] = this.likes;
    data['comments'] = this.comments;
    data['favorites'] = this.favorites;
    data['tags'] = this.tags;
    data['videos']['large']['url']=this.url;

    return data;
  }

  setupVideo() {
    controller = VideoPlayerController.network(url)
      ..initialize().then((_) {
        controller.setLooping(true);
      });
  }
}
