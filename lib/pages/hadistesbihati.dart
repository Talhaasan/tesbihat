import 'package:flutter/material.dart';


//import 'package:tesbihat/pages/main.dart';
class HadisTesbihati extends StatefulWidget {
  @override
  _HadisTesbihati createState() => _HadisTesbihati();
}

class _HadisTesbihati extends State<HadisTesbihati> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tesbihat',
      home: Scaffold(
        backgroundColor: Colors.amber[100],
        body: ListView(
          children: <Widget>[
          
            appsRecommendedContainer(),
            
          ],
        ),
      ),
    );
  }

  Widget appsRecommendedContainer() {
    return Container(
        height: 260.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            labelContainer("hadis"),
            SizedBox(
              width: 20.0,
            ),
            Text("Özel Tesbihat",
                style: TextStyle(fontSize: 30, color: Colors.amber[100])),
            SizedBox(
              width: 20.0,
            ),
            Text("Özel Tesbihat",
                style: TextStyle(fontSize: 30, color: Colors.amber[100])),
            SizedBox(
              width: 20.0,
            ),
            Text("Özel Tesbihat",
                style: TextStyle(fontSize: 30, color: Colors.amber[100])),
            SizedBox(
              width: 20.0,
            ),
            Text("Özel Tesbihat",
                style: TextStyle(fontSize: 30, color: Colors.amber[100])),
            SizedBox(
              width: 20.0,
            ),
            Text("Özel Tesbihat",
                style: TextStyle(fontSize: 30, color: Colors.amber[100])),
          ],
        ));
  }
  Widget labelContainer(String labelVal) {
    return Container(
      height: 30.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            labelVal,
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
          ),
          Text(
            'MORE',
            style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 18.0),
          ),
        ],
      ),
    );
  }
 
}
