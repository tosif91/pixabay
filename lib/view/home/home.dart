import 'package:flutter/material.dart';
import 'package:pixabay/utils/color.dart';
import 'package:pixabay/utils/constant.dart';
import 'package:pixabay/view/home/home_model.dart';
import 'package:pixabay/view/inbox/inbox.dart';
import 'package:pixabay/view/pix/pix.dart';
import 'package:pixabay/view/profile/profile.dart';
import 'package:pixabay/view/search/search.dart';
import 'package:pixabay/view/upload_video/upload_video.dart';
import 'package:pixabay/widgets/bottom_bar.dart';
import 'package:pixabay/widgets/upload.dart';
import 'package:stacked/stacked.dart';

class Home extends StatelessWidget {
  int pageIndex = 0;
  PageController _pageViewController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ViewModelBuilder<HomeModel>.reactive(
        disposeViewModel: false,
        viewModelBuilder: () => HomeModel(controller: _pageViewController),
        builder: (context, model, _) => Stack( 
          children: [
            PageView(
              controller: _pageViewController,
              children: <Widget>[
                Stack(children: <Widget>[
                  IndexedStack(
                    index: pageIndex,
                    children: <Widget>[
                      Pix(controller : _pageViewController),

                      // Center(
                      //   child: Text("Discover",style: TextStyle(
                      //     color: white,
                      //     fontSize: 20,
                      //     fontWeight: FontWeight.bold
                      //   ),),
                      // ),
                      // Center(
                      //   child: Text("Upload",style: TextStyle(
                      //     color: white,
                      //     fontSize: 20,
                      //     fontWeight: FontWeight.bold
                      //   ),),
                      // ),
                      // Center(
                      //   child: Text("All Activity",style: TextStyle(
                      //     color: black,
                      //     fontSize: 20,
                      //     fontWeight: FontWeight.bold
                      //   ),),
                      // ),
                      // Center(
                      //   child: Text("Profile",style: TextStyle(
                      //     color: black,
                      //     fontSize: 20,
                      //     fontWeight: FontWeight.bold
                      //   ),),
                      // )
                    ],
                  ),
                ]),
                Search(),
                UploadVideo(),
                Inbox(),
                Profile(),
              ],
            ),
            BottomBar(model: model),
          ],
        ),
      ),
      // bottomNavigationBar: getFooter(),
    );
  }
}
