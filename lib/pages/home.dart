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
          // FlatButton.icon(onPressed: (){
          //   Navigator.pushNamed(context, "/namazTesbihatı");
          // },

          // icon: Icon(Icons.arrow_right),
          // color: Colors.lightGreen,
          // label: Text("Namaz Tesbihatı"),

          //    ),
          ButtonTheme (
          child: RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/namazTesbihatı");
            },
            child: Text("Namaz Tesbihatı"),
            color: Colors.green[500],
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          )
          )
        ],
      ),
    );
  }
}
