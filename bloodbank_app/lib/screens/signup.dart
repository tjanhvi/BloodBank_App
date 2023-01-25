// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  final List<String> healthStatusItems = [
    'Normal',
    'Medium',
    'Critical'
  ];

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(  
        padding: EdgeInsets.all(25.0),        
        child: SingleChildScrollView(
          child: Column(
            children: [              
              SizedBox(height: 100.0),
        
              Text(
                "Registration",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 32,
                ),
              ), 
        
              SizedBox(height: 40.0),
        
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.red,
                      decoration: InputDecoration(
                        hintText: 'Full Name',
                        labelText: 'Full Name',  
                      ),
                    ),
        
                    SizedBox(height: 15.0),
        
                    TextFormField(
                      keyboardType: TextInputType.datetime,
                      cursorColor: Colors.red,
                      decoration: InputDecoration(
                        hintText: 'Date of Birth',
                        labelText: 'Date of Birth',  
                      ),
                    ),
        
                    SizedBox(height: 15.0),
        
                    TextFormField(
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.red,
                      decoration: InputDecoration(
                        hintText: 'Age',
                        labelText: 'Age',  
                      ),
                    ),
        
                    SizedBox(height: 22.0),
        
                    DropdownButtonFormField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.zero,
                        labelText: 'Privaling Health Condition',
                      ),
                      isExpanded: true,                                         
                      hint: const Text(                        
                        'Select your health status',
                        style: TextStyle(fontSize: 16),                     
                      ),
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black,
                      ),
                      iconSize: 30,
                      items: healthStatusItems
                              .map((item) =>
                              DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ))
                              .toList(),
                      validator: (value) {
                        if (value == null) {
                          return 'Please mention you health status.';
                        }
                      },
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value.toString();
                        });
                      },
                      
                      onSaved: (value) {
                        selectedValue = value.toString();
                      },
                    ),
        
                    SizedBox(height: 15.0),
        
                    TextFormField(
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.red,
                      decoration: InputDecoration(
                        hintText: 'Blood Group',
                        labelText: 'Blood Group',  
                      ),
                    ), 
        
                    SizedBox(height: 50.0),
                  ],
                )
              ),
        
            ],
          ),
        ),        
      ),
      bottomSheet: Container(
        height: 50.0,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.red),                    
          ),  
          child: Text("REGISTER FOR CHECK-UP",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      )
    );
  }
}