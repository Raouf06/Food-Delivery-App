import 'package:flutter/material.dart';
import 'package:food_app_delivery/transitions.dart';
import 'package:food_app_delivery/newpass.dart';

class ConfirmCode extends StatefulWidget {
  @override
  _ConfirmCodeState createState() => _ConfirmCodeState();
}

class _ConfirmCodeState extends State<ConfirmCode> {
  var greytext = TextStyle(
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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 200),
                  Text('Entrez le code que vous avez reçu', style: greytext),
                  SizedBox(height: 25),
                  Container(
                    width: 320,
                    child: TextField(
                      decoration: new InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(top: 11.0, left: 22),
                          child: Text("#",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20,
                                  color: Colors.grey[700])),
                        ),
                        labelText: "Entrez le code reçu",
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1.5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.of(context).push(slidetoleft(NewPass()));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      padding: EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.orange[900], Colors.orange[600]],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Container(
                          constraints:
                              BoxConstraints(maxWidth: 225.0, minHeight: 50.0),
                          alignment: Alignment.center,
                          child: Text(
                            "Valider",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
