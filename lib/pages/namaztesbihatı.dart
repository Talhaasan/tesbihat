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
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Namaz Tesbihatı"),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            count.toString() + " " + tesbih,
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: 'sedgwick'),
          ),
        ),
        floatingActionButton: Container(
            width: 90,
            height: 90,
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
                color: Colors.deepOrange,
                textColor: Colors.white,
                shape: CircleBorder(side: BorderSide.none),
                child: Text('Login', style: TextStyle(fontSize: 20.0)))),
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
