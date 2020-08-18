import 'package:flutter/material.dart';

//import 'package:tesbihat/pages/main.dart';
class NamazTesbihati extends StatefulWidget {
  @override
  _NamazTesbihati createState() => _NamazTesbihati();
}

int count = 0;
String tesbih = "Subhanallah";

class _NamazTesbihati extends State<NamazTesbihati> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tesbihat',
      home: Scaffold(
        backgroundColor: Colors.amber[100],
        appBar: AppBar(
          backgroundColor: Colors.deepOrange[900],
          title: Text("Namaz Tesbihatı"),
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
              // 
              color: Colors.black,
              ),
          margin: EdgeInsets.fromLTRB(100, 175, 100, 100),
          
          width: 300,
          height: 55,
          //padding: ,
          child: RaisedButton(
            //Padding(padding: EdgeInsets.only(top: 20)),
            color: Colors.blue[300],

            child: Text(
              count.toString(),
              style: TextStyle(
                  height: 0.93,
                  
                  color: Colors.white,
                  fontSize: 70,
                  //fontWeight: FontWeight.bold,
                  fontFamily: 'patopian'),
            ),
          ),
        ),
        floatingActionButton: Container(
            width: 200,
            height: 200,
            //alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(50, 0, 90, 0),
            child: RaisedButton(
                onPressed: () {
                  setState(() {
                    count += 1;
                  });
                  if (count == 33) {
                    tesbih = "Elhamdulillah";
                  } else if (count == 66) {
                    tesbih = "Allahu Ekber";
                  } else if (count == 99) {
                    Navigator.pushNamed(context, "/");
                  }
                },
                color: Colors.tealAccent[700],
                //textColor: Colors.white,
                shape: CircleBorder(side: BorderSide.none),
                child: Text('', style: TextStyle(fontSize: 20.0)))),
      ),
    );
  }
}
// onPressed: () {
//             setState(() {
//               count += 1;
//             });
//             if (count == 33) {
//               tesbih = "Elhamdulillah";
//             } else if (count == 66) {
//               tesbih = "Allahu Ekber";
//             } else if (count == 99) {
//               Navigator.pushNamed(context, "/");
//             }
