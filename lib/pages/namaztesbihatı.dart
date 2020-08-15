import 'package:flutter/material.dart';
//import 'package:tesbihat/pages/main.dart';
class NamazTesbihati extends StatefulWidget {
  @override
  _NamazTesbihati createState() => _NamazTesbihati();
}
int count=0;
String tesbih="Subhanallah";
class _NamazTesbihati extends State<NamazTesbihati>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Tesbihat',
      
      home: Scaffold(


        backgroundColor: Colors.blue[100],
        appBar: AppBar(backgroundColor: Colors.red,
        title: Text("Tesbihat"),
        centerTitle: true,
        
        ),
        
        body: Center(
        
        child: Text(count.toString()+" "+tesbih,
        
          
        
        style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,fontFamily: 'sedgwick' ),
                
        ),

        
        ),
        
        floatingActionButton: FloatingActionButton(
          
          onPressed:(){            
            setState(() {
              count+=1;
            });
            if(count==33){
              tesbih="Elhamdulillah";         
            }
            else if(count==66){
              tesbih="Allahu Ekber";
            }
            else if(count==99){
              Navigator.pushNamed(context,"/");
            }             
            },
          child: Icon(Icons.add),
          backgroundColor: Colors.red,
          autofocus: true,
          splashColor: Colors.blue,
           
        ), 
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        
      
      ),
      
    );
    
  }
}