import 'package:bloodbank_app/screens/otp_pin.dart';
import 'package:bloodbank_app/screens/screen1.dart';
import 'package:bloodbank_app/screens/screen2.dart';
import 'package:bloodbank_app/screens/screen3.dart';
import 'package:bloodbank_app/screens/screensplash.dart';
import 'package:bloodbank_app/screens/mobile_number.dart';
import 'package:bloodbank_app/screens/signup.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blood Bank App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            
          ],
        ),
      ),
      
    );
  }
}