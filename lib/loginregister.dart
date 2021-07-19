import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app_delivery/login.dart';
import 'package:food_app_delivery/register.dart';
import 'package:food_app_delivery/transitions.dart';

class LoginRegister extends StatelessWidget {
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return SafeArea(
        child: Scaffold(
            body: Container(
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage('images/cnx.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(height: 130),
        MaterialButton(
            minWidth: 260,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            height: 75,
            onPressed: () {
              Navigator.of(context).push(slidetoleft(Register()));
            },
            child: Text(
              'INSCRIPTION',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
              ),
            ),
            textColor: Colors.orange[900],
            color: Colors.white),
        SizedBox(height: 70),
        MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            minWidth: 260,
            height: 75,
            onPressed: () {
              Navigator.of(context).push(slidetoleft(Login()));
            },
            child: Text(
              'CONNEXION',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
            ),
            textColor: Colors.orange[900],
            color: Colors.white),
      ])),
    )));
  }
}
