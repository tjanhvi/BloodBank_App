// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:bloodbank_app/main.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> { 

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
                'assets/images/s3img.png',
                width: 250.0, 
                height: 250.0
              ),

              SizedBox(height: 40.0),

              Container(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  "Donate your blood and save a life.",
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