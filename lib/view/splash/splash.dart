
import 'package:flutter/material.dart';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:pixabay/view/splash/splash_model.dart';


class Splash extends StatelessWidget{
  final SplashModel _model= SplashModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: SafeArea(

                      child: Container(
        color: Colors.white,
        child: 
            Center(
              child: TypewriterAnimatedTextKit(isRepeatingAnimation: false,
              speed: Duration(milliseconds:600),
 
    text: ['Pixabay'],
    textStyle: TextStyle(
      letterSpacing: 1.0,
        fontSize: 30.0,
        fontFamily: 'vibes',
        color:Color(0xff243e63),
        fontWeight: FontWeight.bold
    ),
    onFinished: ()=>_model.navigateToHome(),
    textAlign: TextAlign.start,
    alignment: AlignmentDirectional.topStart // or Alignment.topLeft
  ),
            ), 
             
        
      ),
          ),
    );
  }
}