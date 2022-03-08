import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class AppWidget extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        ),
      home: AnimatedSplashScreen(
            duration: 3000,
            splash: Icons.home,
            nextScreen: HomePage(),
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: Colors.red)
            );
       
  }
}