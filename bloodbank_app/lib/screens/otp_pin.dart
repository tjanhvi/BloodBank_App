// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bloodbank_app/screens/signup.dart';
import 'package:bloodbank_app/screens/verified.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpPin extends StatefulWidget {
  final String mobileNumber;
  const OtpPin(this.mobileNumber);

  @override
  State<OtpPin> createState() => _OtpPinState();
}

class _OtpPinState extends State<OtpPin> {  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("OTP Verification",
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 10.0),

            Text(
              "Enter the otp sent to +91 ${widget.mobileNumber}",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 30.0),

            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: [LengthLimitingTextInputFormatter(1)],
                      style: TextStyle(
                        fontSize: 30,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        border: InputBorder.none,
                        fillColor: Colors.grey.shade400,
                      ),
                    ),
                  ),

                  SizedBox(width: 10.0),

                  SizedBox(
                    height: 50,
                    width: 50,
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        fontSize: 30,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        border: InputBorder.none,
                        fillColor: Colors.grey.shade400,
                      ),
                    ),
                  ),

                  SizedBox(width: 10.0),

                  SizedBox(
                    height: 50,
                    width: 50,
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        fontSize: 30,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        border: InputBorder.none,
                        fillColor: Colors.grey.shade400,
                      ),
                    ),
                  ),

                  SizedBox(width: 10.0),

                  SizedBox(
                    height: 50,
                    width: 50,
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        fontSize: 30,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        border: InputBorder.none,
                        fillColor: Colors.grey.shade400,
                      ),
                    ),
                  ),
                ],
              )
            ),

            SizedBox(height: 40.0),

            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Didn’t receive an OTP? ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),

                Text("Resend OTP",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                ],
              ),
            ),

            SizedBox(height: 20.0),

            Container(
              child: ElevatedButton(
                onPressed: () {   
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Verified(),
                    ),
                  );              
                },
                child: Text('Verify'),
              ),
            ),            
          ],
        ),
      ),
    );
  }
}