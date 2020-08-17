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
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background_for_counter.jpg"),
                  fit: BoxFit.cover)),
          margin: EdgeInsets.fromLTRB(100, 200, 100, 0),
          width: 200,
          height: 100,
          //padding: ,
          child: RaisedButton(
            //Padding(padding: EdgeInsets.only(top: 20)),
            color: Colors.blue,

            child: Text(
              count.toString(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 72,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'digital'),
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
                color: Colors.blueGrey,
                textColor: Colors.white,
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
