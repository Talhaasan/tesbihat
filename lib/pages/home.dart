import 'package:flutter/material.dart';
import 'package:tesbihat/pages/namaztesbihat%C4%B1.dart';
import 'package:tesbihat/pages/ozelTesbihat.dart';
//import 'package:tesbihat/pages/main.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.amber[100],
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 130,
          ),
          
          namazTesbihatButton(),
          SizedBox(
            height: 50,
          ),
          ozelTesbihatButton(),
          SizedBox(
            height: 50,
          ),
          hadisTesbihatButton(),
          
        ],
      ),
    );
  }

  Widget namazTesbihatButton()
  {
    return Container(
      child:ButtonTheme(
        height: 100,
              child: RaisedButton(
                onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NamazTesbihati()),
                  );
                },
                child: Text("Namaz Tesbihatı"),
                color: Colors.deepOrange[900],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))
      )
    )
    );
    
  }
  Widget hadisTesbihatButton()
  {
    return Container(
      child:ButtonTheme(
        height: 100,
              child: RaisedButton(
                onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NamazTesbihati()),
                  );
                },
                child: Text("Hadis Tesbihatı"),
                color: Colors.deepOrange[900],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))
      )
    )
    );
  }
   Widget ozelTesbihatButton()
  {
    return Container(
      child:ButtonTheme(
        height: 100,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OzelTesbihatPage()),
                  );
                },
                child: Text(
                  "Özel Tesbihat",
                  style: TextStyle(fontSize: 30, color: Colors.lightBlue[300])),
                color: Colors.deepOrange[900],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))
      )
    )
    );
  }
}

  // Widget ozelTesbihatButton() {
  //   return Container(
  //       child: OutlineButton(

  //           splashColor: Colors.green,
  //           onPressed: () {},
  //           shape:
  //               RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  //           highlightElevation: 0,

  //           //borderSide: BorderSide(color: Colors.grey),
  //           child: Padding(
  //               padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
  //               child: Column(children: <Widget>[
  //                 Row(
  //                     mainAxisSize: MainAxisSize.min,
  //                     mainAxisAlignment: MainAxisAlignment.center,
  //                     children: <Widget>[
  //                       Padding(
  //                           padding: const EdgeInsets.only(left: 0),
  //                           child: Text('Sign in with Google',
  //                               style: TextStyle(
  //                                   fontSize: 20, color: Colors.black)))
  //                     ])
  //               ]))));
  // }