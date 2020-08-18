import 'package:flutter/material.dart';

//import 'package:tesbihat/pages/main.dart';
class NamazTesbihati extends StatefulWidget {
  @override
  _NamazTesbihati createState() => _NamazTesbihati();
}

int count = 0;
String tesbih = "Subhanallah";
String textSection="";
class _NamazTesbihati extends State<NamazTesbihati> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tesbihat',
      home: Scaffold(
        backgroundColor: Colors.amber[100],
        body: ListView(children: <Widget>
        [
            Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black12, width: 8.0),

            //
            color: Colors.black54,
          ),
          margin: EdgeInsets.fromLTRB(75, 50, 75, 0),

          width: 450,
          height: 69,
          //padding: ,
          child: RaisedButton(
            //Padding(padding: EdgeInsets.only(top: 20))
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
        textSection(),
        counterButton(),
        ],
        ),
        
      



        
                
      ),
    );
  }
  Widget textSection()
  {
    return  Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
            'Alps. Situated 1,578 meters above sea level, it is one of the '
            'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
            'half-hour walk through pastures and pine forest, leads you to the '
            'lake, which warms to 20 degrees Celsius in the summer. Activities '
            'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
        style: TextStyle(fontSize: 20.0,),
      ),
    );
}
Widget counterButton(){
  return Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black12, width: 3.0),
                shape: BoxShape.circle),
            width: 200,
            height: 200,
            //alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(90, 0, 90, 0),
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
                color: Colors.deepOrange[900],
                //textColor: Colors.white,
                shape: CircleBorder(side: BorderSide.none),
                child: Text('', style: TextStyle(fontSize: 20.0))));
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
