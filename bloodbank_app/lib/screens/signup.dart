// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,        
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 100.0),

              Text(
                "Signup",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ), 

              SizedBox(height: 20.0),

              Container(
                padding: EdgeInsets.all(18.0),
                child: Column(                  
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Full Name",
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),                      
                    ),

                    SizedBox(height: 15.0),

                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Date of Birth",
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ), 

                    SizedBox(height: 15.0),

                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Age",
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),

                    SizedBox(height: 15.0),

                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Prevailing Health Condition",
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),

                    SizedBox(height: 15.0),

                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Blood Group",
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30.0),

              Container(
                height: 90.0,
                padding: EdgeInsets.all(18.0),                
                child: ElevatedButton(                  
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Signup()),
                    );
                  }, 
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),                    
                  ),                 
                  child: Text("REGISTER FOR CHECK-UP",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                    ),
                  ),
                ),
              )

            ],
          ),
        ),        
      ),
    );
  }
}