import 'package:flutter/material.dart';
import 'package:food_app_delivery/loginregister.dart';
import 'dart:async';
import 'package:food_app_delivery/transitions.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void _starttimer() {
    Timer(Duration(milliseconds: 500), () {
      Navigator.of(context).pushReplacement(Fade(LoginRegister()));
    });
  }

  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _starttimer());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DecoratedBox(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage('images/splash.png'),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}

/*
Route pushlogin() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page2(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(10.0, 0.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
*/
