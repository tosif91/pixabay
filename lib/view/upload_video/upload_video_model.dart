
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pixabay/locator.dart';
import 'package:stacked/stacked.dart';
import 'package:image_picker/image_picker.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:stacked_services/stacked_services.dart';
class UploadVideoModel extends BaseViewModel{
  DialogService _dialogService=locator<DialogService>();

  void openVideoPlayer() async {
   await ImagePicker.platform.pickVideo(source: ImageSource.camera)
        .then((PickedFile recordedVideo) {
      if (recordedVideo != null && recordedVideo.path != null) {
       
        GallerySaver.saveVideo(recordedVideo.path).then((value) async{
                 
              await _dialogService.showDialog(title: 'success',description: 'video sucessfully saved to - ${recordedVideo.path}',);
        });
      }
    });
  }
}