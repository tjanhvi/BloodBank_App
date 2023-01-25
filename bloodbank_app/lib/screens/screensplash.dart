// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:bloodbank_app/main.dart';
import 'package:bloodbank_app/screens/mobile_number.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5), () => 
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MobileNumber(),
        )      
      )
    );  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      body: Container(        
        color: Colors.white,
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/giphy.gif',
                  width: 300.0,
                  height: 300.0,
                ),

                SizedBox(height: 10.0),

                Text("Donate | Save | Community",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                )  
              ],
            ),
          ),
        )
        ),
    );
  }
}