import 'dart:async';

import 'package:bloodbank_app/main.dart';
import 'package:flutter/material.dart';

class Verified extends StatefulWidget {
  const Verified({super.key});

  @override
  State<Verified> createState() => _VerifiedState();
}

class _VerifiedState extends State<Verified> {

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2
      ), () => 
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MyHomePage(title: "Blood Bank App",),
        )      
      )
    );  
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100.0),

              Image.asset('assets/images/verify.gif'),

              SizedBox(height: 40.0),

              Text(
                "Your account has been verified successfully.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),

              SizedBox(height: 40.0),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Verified()),
                  );
                },
                child: Text(
                  "Continue",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}