import 'package:flutter/material.dart';
import 'package:food_app_delivery/transitions.dart';
import 'package:food_app_delivery/confirmcode.dart';

class ForgotPass extends StatefulWidget {
  @override
  _ForgotPassState createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
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
                    'Mot de passe oublié ?',
                    style: TextStyle(
                      color: Colors.orange[900],
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                    ),
                  ),
                  Text('Entrez votre adresse email', style: greytext),
                  SizedBox(height: 25),
                  Container(
                    width: 320,
                    child: TextField(
                      decoration: new InputDecoration(
                        prefixIcon: new Icon(Icons.email_outlined),
                        labelText: "Entrez votre e-mail",
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
                        Navigator.of(context).push(slidetoleft(ConfirmCode()));
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
            )),
      ),
    );
  }
}
