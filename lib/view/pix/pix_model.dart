import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:pixabay/locator.dart';
import 'package:pixabay/models/pix_video.dart';
import 'package:pixabay/services/network_video.dart';

import 'package:stacked/stacked.dart';


class PixModel extends BaseViewModel{
final ScrollController controller;

PixModel({this.controller}){
  controller.addListener(() {
   
   });
} 

StreamSubscription _videosStreamSubs;
NetworkVideo _networkVideo=locator<NetworkVideo>();
List<PixVideo> fetchVideos=List<PixVideo>();

listenToVideos()async{
  setBusy(true);
  await _networkVideo.fetchVideos(5).then((value) =>fetchVideos=value);
  setBusy(false);
}


}

