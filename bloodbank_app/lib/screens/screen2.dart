// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:bloodbank_app/main.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> { 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Center(          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,            
            children: [              
              Image.asset(
                'assets/images/s2img.png',
                width: 300.0, 
                height: 300.0
              ),

              SizedBox(height: 10.0),

              Container(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  "Your blood type should be compatible with the receiver's type.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,                
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}