import 'package:flutter/material.dart';
import 'package:pixabay/locator.dart';
import 'package:pixabay/utils/color.dart';
import 'package:pixabay/view/upload_video/upload_video_model.dart';
import 'package:stacked/stacked.dart';

class UploadVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ViewModelBuilder.reactive(
           viewModelBuilder:()=> UploadVideoModel(), 
         //   onModelReady: (model)=>model.openVideoPlayer(),
           
            builder:(context,model,child)=> Container(
              color:black,
              child: Center(
                child: FlatButton(
                  color: secondary,
                  onPressed: ()=>model.openVideoPlayer(), child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Icon(Icons.camera,color: primary,),
                  SizedBox(width:5.0),
                  Text('capture',style:TextStyle(color: white),),
                ],),),
              ),
            )));
  }
}
