import 'package:flutter/material.dart';
import 'package:food_app_delivery/choicemenu.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var greytext = TextStyle(
      color: Colors.grey[600], fontWeight: FontWeight.w800, fontSize: 20);
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
                child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: ListView(
                shrinkWrap: true,
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Créez un compte',
                          style: TextStyle(
                            color: Colors.orange[900],
                            fontWeight: FontWeight.w900,
                            fontSize: 28,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text('Créez un compte pour', style: greytext),
                        Text('continuer', style: greytext),
                        SizedBox(height: 25),
                        Container(
                          width: 320,
                          child: TextField(
                            decoration: new InputDecoration(
                              prefixIcon: new Icon(Icons.person_outline),
                              labelText: "Nom",
                              enabledBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                                borderSide: const BorderSide(
                                    color: Colors.grey, width: 1.5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: 320,
                          child: TextField(
                            decoration: new InputDecoration(
                              prefixIcon: new Icon(Icons.phone_android),
                              labelText: "Numero de téléphone",
                              enabledBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                                borderSide: const BorderSide(
                                    color: Colors.grey, width: 1.5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: 320,
                          child: TextField(
                            decoration: new InputDecoration(
                              prefixIcon: new Icon(Icons.email_outlined),
                              labelText: "E-mail",
                              enabledBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                                borderSide: const BorderSide(
                                    color: Colors.grey, width: 1.5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: 320,
                          child: TextField(
                            decoration: new InputDecoration(
                              prefixIcon: new Icon(Icons.lock_outline),
                              labelText: "Mot de passe",
                              enabledBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                                borderSide: const BorderSide(
                                    color: Colors.grey, width: 1.5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text(
                                "En continuant vous acceptez les termes",
                                style: TextStyle(
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 15),
                            child: Text("et les conditions d'utilisation",
                                style: TextStyle(
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15))),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Choice()),
                                ModalRoute.withName('/'),
                              );
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(80.0)),
                            padding: EdgeInsets.all(0.0),
                            child: Ink(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.orange[900],
                                      Colors.orange[600]
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                  ),
                                  borderRadius: BorderRadius.circular(30.0)),
                              child: Container(
                                constraints: BoxConstraints(
                                    maxWidth: 225.0, minHeight: 50.0),
                                alignment: Alignment.center,
                                child: Text(
                                  "Continuer",
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
                  )
                ],
              ),
            ))),
      ),
    );
  }
}
