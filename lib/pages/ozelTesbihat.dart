import 'package:flutter/material.dart';


class OzelTesbihat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}

class OzelTesbihatPage extends StatefulWidget {
  @override
  _OzelTesbihatPageState createState() => _OzelTesbihatPageState();
}

class _OzelTesbihatPageState extends State<OzelTesbihatPage> {
  
  TextEditingController ozeltesbihatController = TextEditingController();
  TextEditingController tesbihatsayisiController = TextEditingController();
  TextEditingController temizleController = TextEditingController();
 
  FocusNode myFocusNode = new FocusNode();
  
  String ozelTesbihat = "";
  int tesbihatSayisi=0;
  
   bool pressAttentiontesbihat = false;
   bool pressAttentiontesbihatSayisi = false;

  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Container(
        child: SingleChildScrollView(
          child: new Column(children: <Widget>[
            SizedBox(height: 30),
            Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  focusNode: myFocusNode,
                  keyboardType: TextInputType.number,
                  controller: ozeltesbihatController,
                  decoration: InputDecoration(
                    // hintText: "An Outline Border TextField",

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            BorderSide(color: Colors.deepPurple, width: 2.0)),
                    labelText: 'Tesbihatı Girin',
                    labelStyle: TextStyle(
                        color: myFocusNode.hasFocus
                            ? Colors.deepPurple
                            : Colors.grey[700]),

                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.grey[700], width: 2.0)),
                  ),
                  onChanged: (text) {
                    setState(() {
                      ozelTesbihat = ozeltesbihatController.text;
                    });
                  },
                )),
                Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: tesbihatsayisiController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.deepPurple,
                        width: 2.0,
                      ),
                    ),
                    labelText: 'Tesbihat Sayısını Girin', //Matrah hesaplaması için
                    labelStyle: TextStyle(
                        color: myFocusNode.hasFocus
                            ? Colors.deepPurple
                            : Colors.grey[700]),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.grey[700], width: 2.0)),
                  ),
                  onChanged: (text) {
                    setState(() {
                      tesbihatSayisi = int.parse(tesbihatsayisiController.text);


                    });
                  },
                )),
    
            new Row(
              children: [
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: RaisedButton(
                      child: Text("Temizle"),
                      onPressed: () {
                        temizle();
                        setState(() {
                          ozeltesbihatController.text = "";
                         
                        });
                      },
                      color: Colors.red[600],
                      textColor: Colors.white,
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),),
                 
                 Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: RaisedButton(
                        child: Text("Kayıt Listem"),
                        onPressed: () {
                       
                        },
                        color: Colors.blueGrey[800],
                        textColor: Colors.white,
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10))),
                 ],
                ),


              ],
            ),
            ),
         ),
    );
  }

  void temizle(){
    setState(() {
      pressAttentiontesbihat = false;
      pressAttentiontesbihatSayisi = false;
      ozelTesbihat="";
    });
  }
}

  


