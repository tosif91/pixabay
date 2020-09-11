import 'package:flutter/material.dart';
import 'package:pixabay/utils/color.dart';
import 'package:pixabay/utils/constant.dart';
import 'package:pixabay/view/home/home_model.dart';

class BottomIcon extends StatelessWidget {
  final int index;
  final HomeModel model;
 
  BottomIcon({@required this.index,@required this.model});
  @override
  Widget build(BuildContext context) {
    return InkWell(
                    onTap: ()=>model.onItemTapped(index ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            bottomItems[index]['icon'],
                            size: (model.selectedIndex== index)?23.0:20.0,
                            color: white,
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Center(
                            child: Text(
                              bottomItems[index]['label'],
                              style: TextStyle(color: white, fontSize: 10),
                            ),
                          )
                        ],
                      ),
                    );
  }
}