
import 'ui/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      theme: ThemeData(          // Add the 3 lines from here... 
        primaryColor: Colors.white,
      ),    
      home: Home(),
    );
  }
}