import 'package:flutter/material.dart';
import 'package:whatsup_ui/whatsupui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build (BuildContext context){
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.pink

    ),
    home: WhatsAppUi(),
  );
  }
}
