import 'package:flutter/material.dart';

class NewPass extends StatefulWidget {
  @override
  _NewPassState createState() => _NewPassState();
}

class _NewPassState extends State<NewPass> {
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
                  Text(
                    'Nouveau mot de passe',
                    style: TextStyle(
                      color: Colors.orange[900],
                      fontWeight: FontWeight.w900,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    width: 320,
                    child: TextField(
                      decoration: new InputDecoration(
                        prefixIcon: new Icon(Icons.lock_outline),
                        labelText: "Nouveau mot de passe",
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
                  Container(
                    width: 320,
                    child: TextField(
                      decoration: new InputDecoration(
                        prefixIcon: new Icon(Icons.lock_outline),
                        labelText: "Confirmez votre mot de passe",
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
                      onPressed: () {},
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
                            "Confirmer",
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
