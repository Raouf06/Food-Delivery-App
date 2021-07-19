import 'package:flutter/material.dart';
import 'transitions.dart';
import 'etabs.dart';

class Choice extends StatelessWidget {
  final greytext = TextStyle(
      color: Colors.grey[600], fontWeight: FontWeight.w800, fontSize: 16);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage('images/bg.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Choisissez ...',
                    style: TextStyle(
                      color: Colors.orange[900],
                      fontWeight: FontWeight.w900,
                      fontSize: 28,
                    ),
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.of(context).push(slidetoleft(Etabscreen()));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      padding: EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.orange[900], Colors.orange[600]],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Container(
                          constraints:
                              BoxConstraints(maxWidth: 250.0, minHeight: 100.0),
                          alignment: Alignment.center,
                          child: Text(
                            "UN ETABLISSEMENT",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: MaterialButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      padding: EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.orange[900], Colors.orange[600]],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Container(
                          constraints:
                              BoxConstraints(maxWidth: 250.0, minHeight: 100.0),
                          alignment: Alignment.center,
                          child: Text(
                            "UN MENU",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
