import 'package:flutter/material.dart';
import 'package:online5_modul_lesson9_mes_task/pages/messenger.dart';

import 'facebook/facebook_ui_1.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(

      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MaterialButton(onPressed: (){ Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FaceBook_UI_1()));},
        child: Text("FaceBook",style: TextStyle(color: Colors.white),),),
        MaterialButton(onPressed:(){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Messenger()));
        },
        child: Text("Messenger",style: TextStyle(color: Colors.white),),),
      ],
    ) ,);
  }
}
