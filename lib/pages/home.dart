import 'package:flutter/material.dart';
//import 'package:tesbihat/pages/main.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: ListView(
        children: <Widget>[   
             SizedBox(height: 50,),
          ButtonTheme(
              height: 150,
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/namazTesbihatı");
                },
                child: Text("Namaz Tesbihatı"),
                color: Colors.green[500],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
              )),
              SizedBox(height: 50,),
          ButtonTheme(
              height: 150,
              child: RaisedButton(              
                onPressed: () {
                  Navigator.pushNamed(context, "/namazTesbihatı");
                },
                child: Text("Özel Tesbihat",style:TextStyle(fontSize: 30,color: Colors.lightBlue[300]),),
                color: Colors.green[500],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
              )
              ),
              SizedBox(height: 50,),
               ButtonTheme(
              height: 150,
              child: RaisedButton(              
                onPressed: () {
                  Navigator.pushNamed(context, "/namazTesbihatı");
                },
                child: Text("Namaz Tesbihatı"),
                color: Colors.green[500],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
              )
              ),

        ],
      ),
    );

  }
      Widget ozelTesbihatButton() {
      return Container(
          child: OutlineButton(
              
              splashColor: Colors.green,
              
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              highlightElevation: 0,
              
              //borderSide: BorderSide(color: Colors.grey),
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Column(children: <Widget>[
                    Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text('Sign in with Google',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black)))
                        ])
                  ]))));
    }
}
