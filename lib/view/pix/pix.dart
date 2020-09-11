import 'package:flutter/material.dart';
import 'package:pixabay/utils/color.dart';
import 'package:pixabay/view/pix/pix_model.dart';
import 'package:pixabay/widgets/video_player_widget.dart';
import 'package:stacked/stacked.dart';

class Pix extends StatelessWidget {
  Pix({this.controller});
  PageController controller=PageController();
  ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ViewModelBuilder<PixModel>.reactive(
        disposeViewModel: false,
        onModelReady: (model) => model.listenToVideos(),
        viewModelBuilder: () => PixModel(controller:_controller),
        builder: (context, model, _) => Container(
            color: black,
            child: (model.isBusy)
                ? Center(
                    child: CircularProgressIndicator(backgroundColor: secondary,),
                  )
                : ListView.builder(
                    physics: PageScrollPhysics(),
                    
                    controller: _controller,
                    itemCount: model.fetchVideos.length,
                    itemBuilder: (context, index) => RotatedBox(
                          quarterTurns: 1,
                          child: VideoPlayerWidget(
                            controller: controller,
                            size: MediaQuery.of(context).size,
                            videoUrl: model.fetchVideos[index].url,
                            name: model.fetchVideos[index].user,
                            caption: model.fetchVideos[index].tags,
                            songName: 'alan walker',
                            profileImg: model.fetchVideos[index].userPic,
                            likes: model.fetchVideos[index].likes,
                            comments: model.fetchVideos[index].comments,
                            shares: model.fetchVideos[index].downloads,
                            albumImg: model.fetchVideos[index].userPic,
                            
                          ),
                        ))),
      ),
    );
  }
}
