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
  String tesbihatSayisi = "";

  bool pressAttentiontesbihat = false;
  bool pressAttentiontesbihatSayisi = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Container(
        child: SingleChildScrollView(
          child: new Column(
            children: <Widget>[
              SizedBox(height: 30),
              Container(
                  margin: EdgeInsets.all(10),
                  child: TextField(
                    focusNode: myFocusNode,
                    
                    // keyboardType: TextInputType.number,
                    controller: ozeltesbihatController,
                    decoration: InputDecoration(
                       suffixIcon: IconButton(
                        onPressed: () {
                          temizleTesbihat();
                          setState(() {
                          ozeltesbihatController.text = "";
                          
                        });
                          },
                        
                        icon: Icon(Icons.delete_forever,color: myFocusNode.hasFocus?Colors.red:Colors.grey,)),
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
                      suffixIcon: IconButton(
                        onPressed: () {
                          temizleTesbihatSayisi();
                          setState(() {
                          tesbihatsayisiController.text = "";
                          
                        });
                        },
                        icon: Icon(Icons.delete_forever),color: myFocusNode.hasFocus?Colors.grey:Colors.red,),
                      
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.deepPurple,
                          width: 2.0,
                        ),
                      ),
                      labelText:
                          'Tesbihat Sayısını Girin', //Matrah hesaplaması için
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
                        tesbihatSayisi =tesbihatsayisiController.text;
                      });
                    },
                  )),
              new Row(
                children: [
                  Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: RaisedButton(
                          child: Text("Kaydet"),
                          onPressed: () {},
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

  void temizleTesbihat() {
    setState(() {
      pressAttentiontesbihat = false;
      ozelTesbihat = "";
    });
  }
   void temizleTesbihatSayisi() {
    setState(() {
      pressAttentiontesbihatSayisi = false;
      tesbihatSayisi= "";
    });
  }
}
