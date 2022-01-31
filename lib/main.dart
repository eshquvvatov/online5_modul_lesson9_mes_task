import 'package:flutter/material.dart';
import 'package:online5_modul_lesson9_mes_task/pages/messenger.dart';

import 'facebook/facebook_ui_1.dart';
import 'home_page.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
