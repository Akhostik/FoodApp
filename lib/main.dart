import 'package:flutter/material.dart';
import 'package:flutter_app3/screens/HomePage.dart';
import 'package:flutter_app3/screens/profile.dart';
import 'package:flutter_app3/widgets/orderWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
        
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
    
        visualDensity: VisualDensity.adaptivePlatformDensity,
     
      ),
      routes: {
        'payment': (BuildContext context)=>Checkout()
      },
      home: HomePage(),
      
      
    );
  
  }
  
}
 
