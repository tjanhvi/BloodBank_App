// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:bloodbank_app/main.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> { 

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
                'assets/images/s1img.png',
                width: 250.0, 
                height: 250.0
              ),

              SizedBox(height: 40.0),

              Container(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  "To be a responsilbe donor, you must get a check-up.",
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