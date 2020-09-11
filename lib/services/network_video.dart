import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:pixabay/models/pix_video.dart';
import 'package:pixabay/utils/constant.dart';

class NetworkVideo {
    final StreamController<List<PixVideo>> _videoStreamController =
      StreamController<List<PixVideo>>();

   StreamSubscription _pixVideoSubs;
     List<List<PixVideo>> _allVideoPageRequest = List<List<PixVideo>>();


  Future<List<PixVideo>> fetchVideos(int limit) async {
    final response = await http
        .get('https://pixabay.com/api/videos/?key=$myKey&page=2&per_page=$limit');
    List<PixVideo> videosList = List<PixVideo>();
    if (response.statusCode == 200) {
//     //filledstack
// var currentIndexPage = _allVideoPageRequest.length;
//  var pageExists = currentIndexPage < _allVideoPageRequest.length;

//  if(pageExists)
//  _allVideoPageRequest[currentIndexPage]=
//     //ends here


      return videosList = (json.decode(response.body)['hits'] as List)
          .map((i) => PixVideo.fromJson(i))
          .toList();
    } else {
      throw Exception('Failed to load album');
    }
  } //fetchVideos

  
  loadPosts(int limit) async {
    fetchVideos(limit).then((result) async {
      _videoStreamController.add(result);
      return result;
    });
  }

    Future<Null> _handleRefresh() async {
    fetchVideos(5).then((res) async {
      _videoStreamController.add(res);
      return null;
    });
  }

}
