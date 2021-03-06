import 'package:flutter/material.dart';

class Etabscreen extends StatefulWidget {
  @override
  _EtabscreenState createState() => _EtabscreenState();
}

class _EtabscreenState extends State<Etabscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: FloatingActionButton(
                onPressed: () {},
                child: Ink(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 4.0),
                    color: Color.fromRGBO(255, 65, 7, 1),
                    shape: BoxShape.circle,
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(1000.0),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.shopping_cart_outlined,
                        size: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )),
            body: Stack(alignment: Alignment.center, children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Container(
                    width: 400,
                    height: 150,
                    decoration: new BoxDecoration(
                      image: new DecorationImage(
                        image: new AssetImage('images/roman.png'),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 120,
                child: Container(
                  width: 320,
                  child: TextField(
                    decoration: new InputDecoration(
                      suffixIcon: new Icon(Icons.lock_outline),
                      labelText: "Mot de passe",
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
              ),
              ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    height: 50,
                    color: Colors.amber[600],
                    child: const Center(child: Text('Entry A')),
                  ),
                ],
              ),
            ]),
            bottomNavigationBar: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFff4107),
                      Color(0xFFff4608),
                      Color(0xFFff4D0a),
                      Color(0xFFff550C),
                      Color(0xFFff610F),
                      Color(0xFFff6911),
                      Color(0xFFfd8b19),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.0, 0.075, 0.15, 0.25, 0.4, 0.55, 0.9],
                  ),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38, spreadRadius: 0, blurRadius: 10),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                  child: BottomNavigationBar(
                      backgroundColor: Colors.transparent,
                      showSelectedLabels: false,
                      showUnselectedLabels: false,
                      unselectedItemColor: Colors.white,
                      selectedIconTheme: IconThemeData(color: Colors.white),
                      items: <BottomNavigationBarItem>[
                        BottomNavigationBarItem(
                            icon: Icon(Icons.home_outlined),
                            title: Text('Favourite')),
                        BottomNavigationBarItem(
                            icon: Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 25, 0),
                                child: Icon(Icons.favorite_border)),
                            title: Text('Favourite')),
                        BottomNavigationBarItem(
                            icon: Padding(
                                padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                                child: Icon(Icons.access_time_outlined)),
                            title: Text('Favourite')),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.person_outline),
                            title: Text('Favourite'))
                      ],
                      type: BottomNavigationBarType.fixed),
                ))));
  }
}

/*
class Etabscreen extends StatefulWidget {
  @override
  _EtabscreenState createState() => _EtabscreenState();
}

class _EtabscreenState extends State<Etabscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Increment',
          child: Icon(Icons.add),
          elevation: 2.0,
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(Icons.access_time_outlined),
              Icon(Icons.access_time_outlined),
              Icon(Icons.access_time_outlined),
              Icon(Icons.access_time_outlined)
            ],
          ),
          shape: CircularNotchedRectangle(),
          color: Colors.blueGrey,
        ),
      ),
    );
  }
}
*/
