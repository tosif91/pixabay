import 'package:flutter/cupertino.dart';
import 'package:pixabay/models/pix_video.dart';
import 'package:pixabay/services/network_video.dart';
import 'package:stacked/stacked.dart';

class HomeModel extends BaseViewModel{

NetworkVideo video=NetworkVideo();
  // NavigationService _navigationService = locator<NavigationService>();
  // DialogService _dialogService = locator<DialogService>();

  
  int _selectedIndex = 0;
  double _page;
  double _offset;

  double get offset => _offset;
  double get page => _page;
  int get selectedIndex => _selectedIndex;
  final PageController controller;

  HomeModel({@required this.controller}) {
    controller.addListener(() {
      _offset = controller.offset;
      _page = controller.page;
      _selectedIndex = _page.toInt();
      notifyListeners();
    }
    );
  }

onItemTapped(int index) async{
  

    _selectedIndex = index;
    controller.jumpToPage(index);
    print('$index hey their');
    notifyListeners();
  
   
  }

  
}